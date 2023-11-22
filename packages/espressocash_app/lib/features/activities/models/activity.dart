import 'package:freezed_annotation/freezed_annotation.dart';

import '../../outgoing_direct_payments/models/outgoing_direct_payment.dart';
import '../../outgoing_link_payments/models/outgoing_link_payment.dart';
import '../../swap/models/swap.dart';

part 'activity.freezed.dart';

@freezed
class Activity with _$Activity {
  const factory Activity.outgoingPaymentRequest({
    required String id,
    required DateTime created,
  }) = OPRActivity;

  const factory Activity.outgoingDirectPayment({
    required String id,
    required DateTime created,
    required OutgoingDirectPayment data,
  }) = ODPActivity;

  const factory Activity.outgoingLinkPayment({
    required String id,
    required DateTime created,
    required OutgoingLinkPayment data,
  }) = OLPActivity;

  const factory Activity.swap({
    required String id,
    required DateTime created,
    required Swap data,
  }) = SwapActivity;

  const factory Activity.onRamp({
    required String id,
    required DateTime created,
  }) = OnRampActivity;

  const factory Activity.offRamp({
    required String id,
    required DateTime created,
  }) = OffRampActivity;
}
