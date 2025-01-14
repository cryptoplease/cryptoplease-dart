import 'dart:async';

import 'package:dfunc/dfunc.dart';
import 'package:injectable/injectable.dart';
import 'package:solana/dto.dart' hide Instruction;
import 'package:solana/encoder.dart';
import 'package:solana/solana.dart';
import 'package:uuid/uuid.dart';

import '../../../utils/transactions.dart';
import '../../accounts/auth_scope.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../analytics/analytics_manager.dart';
import '../../balances/services/refresh_balance.dart';
import '../../currency/models/amount.dart';
import '../../outgoing_direct_payments/data/repository.dart';
import '../../outgoing_direct_payments/models/outgoing_direct_payment.dart';
import '../../tokens/token.dart';
import '../../transactions/models/tx_results.dart';
import '../../transactions/services/resign_tx.dart';
import '../../transactions/services/tx_sender.dart';

@Singleton(scope: authScope)
class TokenSendService {
  TokenSendService(
    this._client,
    this._repository,
    this._txSender,
    this._analyticsManager,
    this._refreshBalance,
  );

  final SolanaClient _client;
  final ODPRepository _repository;
  final TxSender _txSender;
  final AnalyticsManager _analyticsManager;
  final RefreshBalance _refreshBalance;

  final Map<String, StreamSubscription<void>> _subscriptions = {};

  Future<OutgoingDirectPayment> create({
    required ECWallet account,
    required CryptoAmount amount,
    required Ed25519HDPublicKey receiver,
  }) async {
    final id = const Uuid().v4();

    final status = amount.token == Token.sol
        ? await _createSolTransferTx(
            account: account,
            receiver: receiver,
            amount: amount,
          )
        : await _createTokenTransferTx(
            account: account,
            receiver: receiver,
            amount: amount,
          );

    final payment = OutgoingDirectPayment(
      id: id,
      receiver: receiver,
      amount: amount,
      created: DateTime.now(),
      status: status,
    );

    await _repository.save(payment);
    _subscribe(id);

    return payment;
  }

  Future<void> cancel(String paymentId) async {
    final payment = await _repository.load(paymentId);
    if (payment == null || !payment.isRetriable) return;

    await _repository.delete(paymentId);
  }

  Future<ODPStatus> _createSolTransferTx({
    required CryptoAmount amount,
    required ECWallet account,
    required Ed25519HDPublicKey receiver,
  }) async {
    try {
      final lamports = amount.value;

      final Message message = Message(
        instructions: [
          SystemInstruction.transfer(
            fundingAccount: account.publicKey,
            lamports: lamports,
            recipientAccount: receiver,
          ),
        ],
      );

      final blockhash = await _client.rpcClient.getLatestBlockhash();
      final compiled = message.compile(
        recentBlockhash: blockhash.value.blockhash,
        feePayer: account.publicKey,
      );

      final tx = await SignedTx(
        compiledMessage: compiled,
        signatures: [account.publicKey.emptySignature()],
      ).let((it) => it.resign(account));

      return ODPStatus.txCreated(tx, slot: blockhash.context.slot);
    } on Exception {
      return const ODPStatus.txFailure(
        reason: TxFailureReason.creatingFailure,
      );
    }
  }

  Future<ODPStatus> _createTokenTransferTx({
    required CryptoAmount amount,
    required ECWallet account,
    required Ed25519HDPublicKey receiver,
  }) async {
    try {
      final mint = amount.token.publicKey;
      final sender = account.publicKey;
      const commitment = Commitment.confirmed;

      final shouldCreateAta = !await _client.hasAssociatedTokenAccount(
        owner: receiver,
        mint: mint,
        commitment: commitment,
      );

      final token = await _client.rpcClient
          .getAccountInfo(
            mint.toBase58(),
            commitment: commitment,
            encoding: Encoding.base64,
          )
          .then((it) => it.value);

      final tokenProgram = token?.owner.toType;

      if (tokenProgram == null) {
        return const ODPStatus.txFailure(
          reason: TxFailureReason.creatingFailure,
        );
      }

      final instructions = <Instruction>[];

      final ataSender = await findAssociatedTokenAddress(
        owner: sender,
        mint: mint,
        tokenProgramType: tokenProgram,
      );

      final ataReceiver = await findAssociatedTokenAddress(
        owner: receiver,
        mint: mint,
        tokenProgramType: tokenProgram,
      );

      if (shouldCreateAta) {
        final iCreateATA = AssociatedTokenAccountInstruction.createAccount(
          funder: sender,
          address: ataReceiver,
          owner: receiver,
          mint: mint,
          tokenProgramId: tokenProgram.id,
        );
        instructions.add(iCreateATA);
      }

      final iTransfer = TokenInstruction.transferChecked(
        amount: amount.value,
        decimals: amount.token.decimals,
        mint: mint,
        source: ataSender,
        destination: ataReceiver,
        owner: sender,
        tokenProgram: tokenProgram,
      );

      instructions.add(iTransfer);

      final message = Message(instructions: instructions);

      final blockhash = await _client.rpcClient.getLatestBlockhash(
        commitment: commitment,
      );
      final compiled = message.compile(
        recentBlockhash: blockhash.value.blockhash,
        feePayer: account.publicKey,
      );

      final tx = await SignedTx(
        compiledMessage: compiled,
        signatures: [account.publicKey.emptySignature()],
      ).let((it) => it.resign(account));

      return ODPStatus.txCreated(tx, slot: blockhash.context.slot);
    } on Exception {
      return const ODPStatus.txFailure(
        reason: TxFailureReason.creatingFailure,
      );
    }
  }

  void _subscribe(String paymentId) {
    _subscriptions[paymentId] = _repository
        .watch(paymentId)
        .asyncExpand<OutgoingDirectPayment?>((payment) {
      switch (payment.status) {
        case ODPStatusTxCreated():
          return _send(payment).asStream();
        case ODPStatusTxSent():
          return _wait(payment).asStream();
        case ODPStatusSuccess():
        case ODPStatusTxFailure():
          _subscriptions.remove(paymentId)?.cancel();

          return null;
      }
    }).listen((payment) => payment?.let(_repository.save));
  }

  Future<OutgoingDirectPayment> _send(OutgoingDirectPayment payment) async {
    final status = payment.status;
    if (status is! ODPStatusTxCreated) {
      return payment;
    }

    final tx = await _txSender.send(status.tx, minContextSlot: status.slot);

    final ODPStatus? newStatus = tx.map(
      sent: (_) => ODPStatus.txSent(
        status.tx,
        slot: status.slot,
      ),
      invalidBlockhash: (_) => const ODPStatus.txFailure(
        reason: TxFailureReason.invalidBlockhashSending,
      ),
      failure: (it) => ODPStatus.txFailure(reason: it.reason),
      networkError: (_) => null,
    );

    return newStatus == null ? payment : payment.copyWith(status: newStatus);
  }

  Future<OutgoingDirectPayment> _wait(OutgoingDirectPayment payment) async {
    final status = payment.status;
    if (status is! ODPStatusTxSent) {
      return payment;
    }

    final tx = await _txSender.wait(
      status.tx,
      minContextSlot: status.slot,
      txType: 'OutgoingTokenPayment',
    );

    final ODPStatus? newStatus = tx.map(
      success: (_) => ODPStatus.success(txId: status.tx.id),
      failure: (tx) => ODPStatus.txFailure(reason: tx.reason),
      networkError: (_) => null,
    );

    if (newStatus is ODPStatusSuccess) {
      _refreshBalance();

      _analyticsManager.directPaymentSent(
        symbol: payment.amount.token.symbol,
        amount: payment.amount.decimal,
      );
    }

    return newStatus == null ? payment : payment.copyWith(status: newStatus);
  }
}

extension on String? {
  TokenProgramType? get toType => switch (this) {
        Token2022Program.programId => TokenProgramType.token2022Program,
        TokenProgram.programId => TokenProgramType.tokenProgram,
        _ => null,
      };
}
