import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:solana/encoder.dart';

import '../../../data/db/db.dart';
import '../../../di.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../outgoing_direct_payments/data/repository.dart';
import '../../outgoing_link_payments/data/repository.dart';
import '../../payment_request/data/repository.dart';
import '../../token_swap/data/swap_repository.dart';
import '../../tokens/data/token_repository.dart';
import '../../tokens/token.dart';
import '../../transaction_request/service/tr_service.dart';
import '../models/activity.dart';
import '../models/transaction.dart';
import 'activity_builder.dart';

@injectable
class TransactionRepository {
  const TransactionRepository(this._db);

  final MyDatabase _db;

  Stream<IList<String>> watchAll() {
    final query = _db.select(_db.transactionRows)
      ..orderBy([(t) => OrderingTerm.desc(t.created)]);

    return query.map((row) => row.id).watch().map((event) => event.toIList());
  }

  Stream<IList<String>> watchByAddress(String tokenAddress) {
    final query = _db.select(_db.transactionRows)
      ..where((t) => t.token.equals(tokenAddress))
      ..orderBy([(t) => OrderingTerm.desc(t.created)]);

    return query.map((row) => row.id).watch().map((event) => event.toIList());
  }

  Stream<Map<String, IList<TxCommon>>> watchGroupedByDate(String tokenAddress) {
    final query = _db.select(_db.transactionRows)
      ..where((t) => t.token.equals(tokenAddress))
      ..orderBy([(t) => OrderingTerm.desc(t.created)]);

    return query.watch().asyncMap((rows) async {
      final grouped = <String, IList<TxCommon>>{};
      for (final row in rows) {
        final model = await row.toModel();
        final created = model.created;
        if (created != null) {
          final date = DateFormat('yyyy-MM-dd').format(created);
          grouped.update(
            date,
            (list) => list.add(model),
            ifAbsent: () => IList([model]),
          );
        }
      }

      return grouped;
    });
  }

  Stream<IList<String>> watchCount(int count) {
    final query = _db.select(_db.transactionRows)
      ..limit(count)
      ..orderBy([(t) => OrderingTerm.desc(t.created)]);

    return query.map((row) => row.id).watch().map((event) => event.toIList());
  }

  Stream<Transaction> watch(String id) {
    final query = _db.select(_db.transactionRows)
      ..where((tbl) => tbl.id.equals(id));

    return query
        .watchSingle()
        .asyncMap((row) => row.toModel().then((value) => _match(value).first));
  }

  Future<void> saveAll(
    Iterable<TxCommon> txs, {
    required bool clear,
  }) {
    Future<void> save() => _db.batch(
          (batch) => batch.insertAll(
            _db.transactionRows,
            txs.map((e) => e.toRow()),
            mode: InsertMode.insertOrReplace,
          ),
        );

    return clear
        ? _db.transaction(() async {
            await _db.delete(_db.transactionRows).go();
            await save();
          })
        : save();
  }

  Future<String?> mostRecentTxId() async {
    final query = _db.select(_db.transactionRows)
      ..orderBy([(t) => OrderingTerm.desc(t.created)])
      ..limit(1);

    final result = await query.getSingleOrNull();

    return result?.id;
  }

  Future<void> clear() => _db.delete(_db.transactionRows).go();

  Stream<Transaction> _match(TxCommon fetched) => _matchActivity(fetched.tx)
      .map(Transaction.activity)
      .onErrorReturn(fetched);

  Stream<Activity> _matchActivity(SignedTx tx) {
    final txId = tx.id;

    final pr = _db.paymentRequestRows.findActivityOrNull(
      where: (row) => row.transactionId.equals(txId),
      builder: (pr) => pr.toActivity(),
      ignoreWhen: (row) => row.state != PaymentRequestStateDto.completed,
    );

    final odp = _db.oDPRows.findActivityOrNull(
      where: (row) => row.txId.equals(txId),
      builder: (pr) => pr.toActivity(),
      ignoreWhen: (row) => row.status != ODPStatusDto.success,
    );

    final olp = _db.oLPRows.findActivityOrNull(
      where: (row) => row.txId.equals(txId),
      builder: (pr) => pr.toActivity(),
      ignoreWhen: (row) => const [OLPStatusDto.withdrawn, OLPStatusDto.canceled]
          .contains(row.status)
          .not(),
    );

    final onRamp = _db.onRampOrderRows.findActivityOrNull(
      where: (row) => row.txHash.equals(txId),
      builder: (pr) => Activity.onRamp(id: pr.id, created: pr.created),
      ignoreWhen: (row) => row.status != OnRampOrderStatus.completed,
    );

    final offRamp = _db.offRampOrderRows.findActivityOrNull(
      where: (row) =>
          row.transaction.equals(tx.encode()) | row.solanaBridgeTx.equals(txId),
      builder: (pr) => Activity.offRamp(id: pr.id, created: pr.created),
      ignoreWhen: (row) => const [
        OffRampOrderStatus.completed,
        OffRampOrderStatus.cancelled,
        OffRampOrderStatus.failure,
        OffRampOrderStatus.refunded,
      ].contains(row.status).not(),
    );

    final oDlnP = _db.outgoingDlnPaymentRows.findActivityOrNull(
      where: (row) => row.txId.equals(txId),
      builder: (pr) => pr.toActivity(),
      ignoreWhen: (row) => const [
        ODLNPaymentStatusDto.fulfilled,
      ].contains(row.status).not(),
    );

    final tr = _db.transactionRequestRows.findActivityOrNull(
      where: (row) => row.transaction.equals(tx.encode()),
      builder: (pr) => pr.toModel().toActivity(),
      ignoreWhen: (row) => row.status != TRStatusDto.success,
    );

    final swap = _db.tokenSwapRows.findActivityOrNull(
      where: (row) => row.tx.equals(tx.encode()),
      builder: (pr) => pr.toActivity(),
      ignoreWhen: (row) => row.status != SwapStatusDto.success,
    );

    return Rx.combineLatest(
      [pr, odp, olp, offRamp, onRamp, oDlnP, tr, swap]
          .map((it) => it.onErrorReturn(null)),
      (values) => values.whereNotNull().first,
    );
  }
}

extension TransactionRowExt on TransactionRow {
  Future<TxCommon> toModel() async {
    final tokenAddress = this.token;
    Token? token;

    if (tokenAddress != null) {
      token = await sl<TokenRepository>().getToken(tokenAddress);
    }

    return TxCommon(
      SignedTx.decode(encodedTx),
      created: created,
      status: status,
      amount: amount?.let(
        (it) => CryptoAmount(
          value: it,
          cryptoCurrency: CryptoCurrency(token: token ?? Token.unk),
        ),
      ),
    );
  }
}

extension on TxCommon {
  TransactionRow toRow() => TransactionRow(
        id: tx.id,
        created: created,
        encodedTx: tx.encode(),
        status: status,
        amount: amount?.value,
        token: amount?.cryptoCurrency.token.address,
      );
}

extension Q<Tbl extends HasResultSet, D> on ResultSetImplementation<Tbl, D> {
  Stream<Activity?> findActivityOrNull({
    required Func1<Tbl, Expression<bool>> where,
    required Func1<D, FutureOr<Activity>> builder,
    Func1<D, bool> ignoreWhen = T,
  }) {
    final query = select()
      ..where(where)
      ..limit(1);

    return query
        .watchSingle()
        .map((it) => ignoreWhen(it) ? throw const _Ignore() : it)
        .asyncMap((it) => it.let(builder))
        .handleError(ignore, test: (e) => e is _Ignore);
  }
}

// ignore: prefer-public-exception-classes, intentionally private
class _Ignore implements Exception {
  const _Ignore();
}

extension on bool {
  bool not() => !this;
}
