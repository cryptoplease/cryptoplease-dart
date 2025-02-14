import 'package:dfunc/dfunc.dart';
import 'package:drift/drift.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../data/db/db.dart';
import '../../kyc_sharing/services/pending_kyc_service.dart';
import '../../outgoing_direct_payments/data/repository.dart';
import '../../outgoing_link_payments/data/repository.dart';
import '../../payment_request/data/repository.dart';
import '../../ramp/services/off_ramp_order_service.dart';
import '../../ramp/services/on_ramp_order_service.dart';
import '../../token_swap/data/swap_repository.dart';
import '../../transaction_request/service/tr_service.dart';
import '../data/activity_builder.dart';
import '../models/activity.dart';

@injectable
class PendingActivitiesRepository {
  const PendingActivitiesRepository(
    this._db,
    this._onRampOrderService,
    this._offRampOrderService,
    this._trService,
    this._pendingKycService,
    this._swapRepository,
  );

  final MyDatabase _db;
  final OnRampOrderService _onRampOrderService;
  final OffRampOrderService _offRampOrderService;
  final TRService _trService;
  final PendingKycService _pendingKycService;
  final SwapRepository _swapRepository;

  Stream<IList<Activity>> watchAll() {
    final opr = _db.select(_db.paymentRequestRows)
      ..where(
        (tbl) => tbl.state.equalsValue(PaymentRequestStateDto.completed).not(),
      );
    final odp = _db.select(_db.oDPRows)
      ..where((tbl) => tbl.status.equalsValue(ODPStatusDto.success).not());
    final olp = _db.select(_db.oLPRows)
      ..where((tbl) => tbl.status.equalsValue(OLPStatusDto.withdrawn).not())
      ..where((tbl) => tbl.status.equalsValue(OLPStatusDto.canceled).not());

    final outgoingDlnPayment = _db.select(_db.outgoingDlnPaymentRows)
      ..where(
        (tbl) => tbl.status.equalsValue(ODLNPaymentStatusDto.fulfilled).not(),
      );

    final oprStream =
        opr.watch().map((rows) => rows.map((r) => r.toActivity()));

    final odpStream = odp
        .watch()
        .asyncMap((rows) async => Future.wait(rows.map((r) => r.toActivity())));

    final olpStream = olp
        .watch()
        .asyncMap((rows) async => Future.wait(rows.map((r) => r.toActivity())));

    final outgoingDlnStream = outgoingDlnPayment
        .watch()
        .map((rows) => rows.map((r) => r.toActivity()));

    final onRampStream = _onRampOrderService.watchPending().map(
          (rows) =>
              rows.map((it) => Activity.onRamp(id: it.id, created: it.created)),
        );

    final offRampStream = _offRampOrderService.watchPending().map(
          (rows) => rows
              .map((it) => Activity.offRamp(id: it.id, created: it.created)),
        );

    final trStream = _trService.watchPending().map(
          (rows) => rows.map((it) => it.toActivity()),
        );

    final pendingKycStream = _pendingKycService.pendingKycStream.map(
      (date) =>
          date == null ? const <Activity>[] : [Activity.kyc(created: date)],
    );

    final swapStream = _swapRepository.watchAllPending().map(
          (rows) => rows.map(
            (it) => Activity.swap(id: it.id, created: it.created, data: it),
          ),
        );

    return Rx.combineLatest<Iterable<Activity>, IList<Activity>>(
      [
        oprStream,
        odpStream,
        onRampStream,
        outgoingDlnStream,
        olpStream,
        offRampStream,
        trStream,
        pendingKycStream,
        swapStream,
      ],
      (values) => values.expand(identity).toIList().sortOrdered((a, b) {
        if (a is KycActivity) return -1;
        if (b is KycActivity) return 1;

        return b.created.compareTo(a.created);
      }),
    );
  }
}
