import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solana/src/dto/account.dart';
import 'package:solana/src/dto/logs.dart';
import 'package:solana/src/dto/slot.dart';
import 'package:solana/src/dto/slot_update.dart';
import 'package:solana/src/subscription_client/abstract_message.dart';
import 'package:solana/src/subscription_client/notification_params.dart';

part 'notification_message.freezed.dart';
part 'notification_message.g.dart';

@Freezed(unionKey: 'method', fallbackUnion: 'unsupported')
class NotificationMessage
    with _$NotificationMessage
    implements SubscriptionMessage {
  const NotificationMessage._();

  const factory NotificationMessage.unsupported() = _UnsupportedNotification;

  const factory NotificationMessage.accountNotification({
    required NotificationParams<Account> params,
  }) = AccountNotification;

  const factory NotificationMessage.logsNotification({
    required NotificationParams<Logs> params,
  }) = LogsNotification;

  const factory NotificationMessage.programNotification({
    required NotificationParams<dynamic> params,
  }) = ProgramNotification;

  const factory NotificationMessage.signatureNotification({
    required NotificationParams<Object?> params,
  }) = SignatureNotification;

  const factory NotificationMessage.slotNotification({
    required NotificationParams<Slot> params,
  }) = SlotNotification;

  const factory NotificationMessage.slotUpdatesNotification({
    required NotificationParams<SlotUpdate> params,
  }) = SlotUpdateNotification;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageFromJson(json);

  /// Each of these objects has a `value` field and we want to
  /// use it to send it to the caller
  dynamic get value => when<dynamic>(
        accountNotification: (params) => params.result.value,
        logsNotification: (params) => params.result.value,
        programNotification: (params) => params.result.value,
        signatureNotification: (params) => params.result.value,
        slotNotification: (params) => params.result.value,
        slotUpdatesNotification: (params) => params.result.value,
        unsupported: () => null,
      );

  int get subscription => maybeWhen(
        accountNotification: (params) => params.subscription,
        orElse: () => -1,
      );
}
