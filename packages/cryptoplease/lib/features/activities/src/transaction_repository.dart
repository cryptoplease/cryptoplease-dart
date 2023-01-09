import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:solana/solana.dart';

import '../../../core/tokens/token_list.dart';
import '../../../data/db/db.dart';
import 'activity.dart';
import 'activity_builder.dart';
import 'transaction.dart';
import 'updater/tx_updater_repository.dart';

@injectable
class TransactionRepository {
  TransactionRepository(this._db, this._tokens);

  final MyDatabase _db;
  final TokenList _tokens;

  Stream<IList<String>> watchAll() {
    final query = _db.select(_db.transactionRows)
      ..orderBy([(t) => OrderingTerm.desc(t.created)]);

    return query
        .map((row) => row.id)
        .watch()
        .map((event) => event.whereNotNull().toIList());
  }

  Stream<Transaction> watch(String id) {
    final query = _db.select(_db.transactionRows)
      ..where((tbl) => tbl.id.equals(id));

    return query.watchSingle().asyncMap((row) => _match(row.toModel()));
  }

  Future<Transaction> _match(TxCommon fetched) =>
      _matchActivity(fetched.tx.id).letAsync(
        (activity) =>
            activity != null ? Transaction.activity(activity) : fetched,
      );

  Future<Activity?> _matchActivity(TransactionId txId) async {
    final pr = await _db.paymentRequestRows.findActivityOrNull(
      (row) => row.transactionId.equals(txId),
      (pr) => pr.toActivity(),
    );
    if (pr != null) return pr;

    final odp = await _db.oDPRows.findActivityOrNull(
      (row) => row.txId.equals(txId),
      (pr) => pr.toActivity(_tokens),
    );
    if (odp != null) return odp;

    final oskp = await _db.oSKPRows.findActivityOrNull(
      (row) => row.txId.equals(txId) | row.withdrawTxId.equals(txId),
      (pr) => pr.toActivity(_tokens),
    );
    if (oskp != null) return oskp;

    return null;
  }
}

extension Q<T extends HasResultSet, D> on ResultSetImplementation<T, D> {
  Future<Activity?> findActivityOrNull(
    Expression<bool?> Function(T tbl) where,
    FutureOr<Activity> Function(D) builder,
  ) async {
    final query = select()
      ..where(where)
      ..limit(1);
    final result = await query.getSingleOrNull();

    return result?.let(builder);
  }
}
