// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsubscribed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnsubscribedMessage _$UnsubscribedMessageFromJson(Map<String, dynamic> json) =>
    UnsubscribedMessage(
      result: (json['result'] as num).toInt(),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$UnsubscribedMessageToJson(
        UnsubscribedMessage instance) =>
    <String, dynamic>{
      'result': instance.result,
      'id': instance.id,
    };
