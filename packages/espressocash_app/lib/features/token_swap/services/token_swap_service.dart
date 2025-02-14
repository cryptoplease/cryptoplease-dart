import 'dart:async';

import 'package:dfunc/dfunc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:solana/encoder.dart';
import 'package:uuid/uuid.dart';

import '../../accounts/auth_scope.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../analytics/analytics_manager.dart';
import '../../balances/services/refresh_balance.dart';
import '../../transactions/models/tx_results.dart';
import '../../transactions/services/resign_tx.dart';
import '../../transactions/services/tx_sender.dart';
import '../data/swap_repository.dart';
import '../models/swap.dart';
import '../models/swap_route.dart';

@Singleton(scope: authScope)
class TokenSwapService {
  TokenSwapService(
    this._repository,
    this._txSender,
    this._analyticsManager,
    this._refreshBalance,
  );

  final SwapRepository _repository;
  final TxSender _txSender;
  final AnalyticsManager _analyticsManager;
  final RefreshBalance _refreshBalance;

  final Map<String, StreamSubscription<void>> _subscriptions = {};

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final pendingSwaps = await _repository.getAllPending();

    for (final swap in pendingSwaps) {
      _subscribe(swap.id);
    }
  }

  Future<Swap> create({
    required ECWallet account,
    required SwapRoute route,
  }) async {
    final id = const Uuid().v4();
    final status = await _createTx(route: route, account: account);

    final swap = Swap(
      id: id,
      status: status,
      data: SwapData(
        input: route.seed.input,
        output: route.seed.output,
        slippage: route.seed.slippage,
        fee: route.fee,
      ),
      created: DateTime.now(),
    );

    await _repository.save(swap);

    _subscribe(swap.id);

    return swap;
  }

  Future<void> cancel(String id) async {
    final payment = await _repository.load(id);
    if (payment == null || !payment.isCancelable) return;

    await _repository.delete(id);
  }

  Future<SwapStatus> _createTx({
    required SwapRoute route,
    required ECWallet account,
  }) async {
    final tx = await route.encodedTx
        .let(SignedTx.decode)
        .let((it) => it.resign(account));

    return SwapStatus.txCreated(tx, slot: route.slot);
  }

  void _subscribe(String id) {
    _subscriptions[id] =
        _repository.watch(id).whereNotNull().asyncExpand<Swap?>((swap) {
      switch (swap.status) {
        case SwapStatusTxCreated():
          return _send(swap).asStream();
        case SwapStatusTxSent():
          return _wait(swap).asStream();
        case SwapStatusSuccess():
        case SwapStatusTxFailure():
          _subscriptions.remove(id)?.cancel();

          return null;
      }
    }).listen((swap) => swap?.let(_repository.save));
  }

  Future<Swap> _send(Swap swap) async {
    final status = swap.status;
    if (status is! SwapStatusTxCreated) {
      return swap;
    }

    final tx = await _txSender.send(
      status.tx,
      minContextSlot: status.slot,
    );

    final SwapStatus? newStatus = tx.map(
      sent: (_) => SwapStatus.txSent(
        status.tx,
        slot: status.slot,
      ),
      invalidBlockhash: (_) => const SwapStatus.txFailure(
        reason: TxFailureReason.invalidBlockhashSending,
      ),
      failure: (it) => SwapStatus.txFailure(reason: it.reason),
      networkError: (_) => null,
    );

    return newStatus == null ? swap : swap.copyWith(status: newStatus);
  }

  Future<Swap> _wait(Swap swap) async {
    final status = swap.status;
    if (status is! SwapStatusTxSent) {
      return swap;
    }

    final tx = await _txSender.wait(
      status.tx,
      minContextSlot: status.slot,
      txType: 'Swap',
    );

    final SwapStatus? newStatus = tx.map(
      success: (_) => SwapStatus.success(status.tx),
      failure: (tx) => SwapStatus.txFailure(reason: tx.reason),
      networkError: (_) => null,
    );

    if (newStatus is SwapStatusSuccess) {
      final data = swap.data;

      _analyticsManager.swapTransactionCreated(
        from: data.input.cryptoCurrency.symbol,
        to: data.output.cryptoCurrency.symbol,
        amount: data.input.value,
      );

      _refreshBalance();
    }

    return newStatus == null ? swap : swap.copyWith(status: newStatus);
  }
}
