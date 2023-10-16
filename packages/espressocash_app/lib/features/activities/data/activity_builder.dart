import '../../../core/tokens/token_list.dart';
import '../../../data/db/db.dart';
import '../../outgoing_direct_payments/data/repository.dart';
import '../../outgoing_dln_payments/data/repository.dart';
import '../../outgoing_link_payments/data/repository.dart';
import '../../swap/data/swap_repository.dart';
import '../models/activity.dart';

extension PaymentRequestRowToActivityExt on PaymentRequestRow {
  Activity toActivity() => Activity.outgoingPaymentRequest(
        id: id,
        created: created,
      );
}

extension ODPRowToActivityExt on ODPRow {
  Activity toActivity(TokenList tokens) => Activity.outgoingDirectPayment(
        id: id,
        created: created,
        data: toModel(tokens),
      );
}

extension SwapRowToActivityExt on SwapRow {
  Activity toActivity(TokenList tokens) => Activity.swap(
        id: id,
        created: created,
        data: toModel(tokens),
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
  Activity toActivity(TokenList tokens) => Activity.outgoingLinkPayment(
        id: id,
        created: created,
        data: toModel(tokens),
      );
}
