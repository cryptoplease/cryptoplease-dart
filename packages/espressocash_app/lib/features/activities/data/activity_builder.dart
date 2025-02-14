import '../../../data/db/db.dart';
import '../../outgoing_direct_payments/data/repository.dart';
import '../../outgoing_dln_payments/data/repository.dart';
import '../../outgoing_link_payments/data/repository.dart';
import '../../token_swap/data/swap_repository.dart';
import '../../transaction_request/models/transaction_request.dart';
import '../models/activity.dart';

extension PaymentRequestRowToActivityExt on PaymentRequestRow {
  Activity toActivity() => Activity.outgoingPaymentRequest(
        id: id,
        created: created,
      );
}

extension ODPRowToActivityExt on ODPRow {
  Future<Activity> toActivity() async => Activity.outgoingDirectPayment(
        id: id,
        created: created,
        data: await toModel(),
      );
}

extension OutgoingDlnPaymentRowToActivityExt on OutgoingDlnPaymentRow {
  Activity toActivity() => Activity.outgoingDlnPayment(
        id: id,
        created: created,
        data: toModel(),
      );
}

extension OLPRowToActivityExt on OLPRow {
  Future<Activity> toActivity() async => Activity.outgoingLinkPayment(
        id: id,
        created: created,
        data: await toModel(),
      );
}

extension TransactionRequestPaymentExt on TransactionRequestPayment {
  Activity toActivity() => Activity.transactionRequest(
        id: id,
        created: created,
        data: this,
      );
}

extension TokenSwapRowToActivityExt on TokenSwapRow {
  Future<Activity> toActivity() async => Activity.swap(
        id: id,
        created: created,
        data: await toModel(),
      );
}
