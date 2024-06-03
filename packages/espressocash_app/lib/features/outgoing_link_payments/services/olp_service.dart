import 'dart:async';

import 'package:dfunc/dfunc.dart';
import 'package:espressocash_api/espressocash_api.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:get_it/get_it.dart';

import 'package:injectable/injectable.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';
import 'package:uuid/uuid.dart';

import '../../accounts/auth_scope.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../analytics/analytics_manager.dart';
import '../../currency/models/amount.dart';
import '../../escrow/models/escrow_private_key.dart';
import '../../escrow_payments/create_canceled_escrow.dart';
import '../../escrow_payments/create_outgoing_escrow.dart';
import '../../escrow_payments/escrow_exception.dart';
import '../../link_payments/models/link_payment.dart';
import '../../transactions/models/tx_results.dart';
import '../../transactions/services/resign_tx.dart';
import '../../transactions/services/tx_confirm.dart';
import '../data/repository.dart';
import '../models/outgoing_link_payment.dart';

@Singleton(scope: authScope)
class OLPService implements Disposable {
  OLPService(
    this._repository,
    this._createOutgoingEscrow,
    this._createCanceledEscrow,
    this._ecClient,
    this._txConfirm,
    this._analyticsManager,
  );

  final OLPRepository _repository;
  final CreateOutgoingEscrow _createOutgoingEscrow;
  final CreateCanceledEscrow _createCanceledEscrow;
  final EspressoCashClient _ecClient;
  final TxConfirm _txConfirm; //TODO confirm not needed
  final AnalyticsManager _analyticsManager;

  final Map<String, StreamSubscription<void>> _subscriptions = {};

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final nonCompletedPayments = await _repository.getNonCompletedPaymentIds();

    for (final payment in nonCompletedPayments) {
      _subscribe(payment);
    }
  }

  void _subscribe(String id) {
    _subscriptions[id] =
        _repository.watch(id).asyncExpand<OutgoingLinkPayment>((payment) {
      switch (payment.status) {
        case OLPStatusTxCreated():
          return _sendOutgoing(payment).asStream();
        case OLPStatusTxSent():
          return Stream.value(_wait(payment));

        case OLPStatusLinkReady():
        case OLPStatusWithdrawn():
        case OLPStatusCanceled():
          _subscriptions.remove(id)?.cancel();

          return null;

        case OLPStatusCancelTxCreated():
          return _sendCanceled(payment).asStream();

        case OLPStatusCancelTxSent(): //TODO confirm not needed
        // return _processCanceled(payment).asStream();

        case OLPStatusTxFailure():
        case OLPStatusCancelTxFailure():
          return null;
      }
    }).listen((payment) => payment.let(_repository.save));
  }

  Future<OutgoingLinkPayment> create({
    required CryptoAmount amount,
    required ECWallet account,
  }) async {
    final status = await _createTx(
      amount: amount,
      account: account,
    );

    final id = const Uuid().v4();

    final payment = OutgoingLinkPayment(
      id: id,
      amount: amount,
      created: DateTime.now(),
      status: status,
    );

    await _repository.save(payment);
    _subscribe(id);

    return payment;
  }

  Future<OutgoingLinkPayment> retry(
    OutgoingLinkPayment payment, {
    required ECWallet account,
  }) async {
    final status = await _createTx(
      amount: payment.amount,
      account: account,
    );

    final newPayment = payment.copyWith(status: status);

    await _repository.save(newPayment);
    _subscribe(payment.id);

    return newPayment;
  }

  Future<OutgoingLinkPayment> cancel(
    OutgoingLinkPayment payment, {
    required ECWallet account,
  }) async {
    final status = payment.status;

    final OLPStatus newStatus;
    if (status is OLPStatusTxFailure) {
      newStatus = OLPStatus.canceled(
        txId: null,
        timestamp: DateTime.now(),
      );
    } else {
      final escrow = status.mapOrNull(
        linkReady: (it) => it.escrow,
        cancelTxFailure: (it) => it.escrow,
      );

      if (escrow == null) {
        return payment;
      }

      newStatus = await _createCancelTx(
        escrow: await Ed25519HDKeyPair.fromPrivateKeyBytes(
          privateKey: escrow.bytes,
        ),
        account: account,
      );
    }

    final newPayment = payment.copyWith(status: newStatus);

    await _repository.save(newPayment);
    _subscribe(payment.id);

    return newPayment;
  }

  Future<OLPStatus> _createTx({
    required CryptoAmount amount,
    required ECWallet account,
  }) async {
    try {
      final escrowAccount = await Ed25519HDKeyPair.random();
      final privateKey = await EscrowPrivateKey.fromKeyPair(escrowAccount);

      final rawTx = await _createOutgoingEscrow(
        senderAccount: account.publicKey,
        escrowAccount: escrowAccount.publicKey,
        amount: amount.value,
        commitment: Commitment.confirmed,
      );

      final tx = await rawTx
          .let((it) => it.resign(account))
          .letAsync((it) => it.resign(LocalWallet(escrowAccount)));

      return OLPStatus.txCreated(
        tx,
        escrow: privateKey,
      );
    } on Exception {
      return const OLPStatus.txFailure(
        reason: TxFailureReason.creatingFailure,
      );
    }
  }

  Future<OLPStatus> _createCancelTx({
    required Ed25519HDKeyPair escrow,
    required ECWallet account,
  }) async {
    final privateKey = await EscrowPrivateKey.fromKeyPair(escrow);

    try {
      final transaction = await _createCanceledEscrow(
        escrowAccount: escrow.publicKey,
        senderAccount: account.publicKey,
        commitment: Commitment.confirmed,
      );
      final tx = await transaction.let((it) => it.resign(account));

      return OLPStatus.cancelTxCreated(
        tx,
        escrow: privateKey,
      );
    } on EscrowException {
      return OLPStatus.cancelTxFailure(
        escrow: privateKey,
        reason: TxFailureReason.escrowFailure,
      );
    } on Exception {
      return OLPStatus.cancelTxFailure(
        escrow: privateKey,
        reason: TxFailureReason.creatingFailure,
      );
    }
  }

  Future<OutgoingLinkPayment> _sendOutgoing(OutgoingLinkPayment payment) async {
    final status = payment.status;
    if (status is! OLPStatusTxCreated) {
      return payment;
    }

    final tx = status.tx;

    try {
      final signature = await _ecClient.submitDurableTx(
        SubmitDurableTxRequestDto(
          tx: tx.encode(),
        ),
      ); //TODO

      _analyticsManager.singleLinkCreated(amount: payment.amount.decimal);

      return payment.copyWith(
        status: OLPStatus.txSent(
          tx,
          escrow: status.escrow,
          signature: signature,
        ),
      );
    } on Exception {
      return payment.copyWith(
        status:
            const OLPStatus.txFailure(reason: TxFailureReason.creatingFailure),
      );
    }
  }

  OutgoingLinkPayment _wait(OutgoingLinkPayment payment) {
    final status = payment.status;
    if (status is! OLPStatusTxSent) {
      return payment;
    }

    final token = payment.amount.token;

    final privateKey = status.escrow.bytes.lock;
    final key = base58encode(privateKey.toList());

    final link = LinkPayment(
      key: key,
      token: token.publicKey,
    ).toShareableLink();

    final newStatus = OLPStatus.linkReady(
      link: link,
      escrow: status.escrow,
    );

    return payment.copyWith(status: newStatus);
  }

  Future<OutgoingLinkPayment> _sendCanceled(
    OutgoingLinkPayment payment,
  ) async {
    final status = payment.status;
    if (status is! OLPStatusCancelTxCreated) {
      return payment;
    }

    final tx = status.tx;

    try {
      final signature = await _ecClient.submitDurableTx(
        SubmitDurableTxRequestDto(
          tx: tx.encode(),
        ),
      ); //TODO upd signature

      _analyticsManager.singleLinkCanceled(amount: payment.amount.decimal);

      return payment.copyWith(
        status: OLPStatus.cancelTxSent(
          tx,
          escrow: status.escrow,
          signature: signature,
        ),
      );
    } on Exception {
      return payment.copyWith(
        status: OLPStatus.cancelTxFailure(
          reason: TxFailureReason.creatingFailure,
          escrow: status.escrow,
        ),
      );
    }
  }

  // Future<OutgoingLinkPayment> _processCanceled( //TODO confirm not needed
  //   OutgoingLinkPayment payment,
  // ) async {
  //   final status = payment.status;

  //   if (status is! OLPStatusCancelTxSent) {
  //     return payment;
  //   }

  //   await _txConfirm(signature: status.signature);

  //   _analyticsManager.singleLinkCanceled(amount: payment.amount.decimal);

  //   return payment.copyWith(
  //     status: OLPStatus.canceled(
  //       txId: status.signature,
  //       timestamp: DateTime.now(),
  //     ),
  //   );
  // }

  @override
  Future<void> onDispose() async {
    await Future.wait(_subscriptions.values.map((it) => it.cancel()));
  }
}
