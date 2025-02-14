// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribed_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribedMessage _$SubscribedMessageFromJson(Map<String, dynamic> json) =>
    SubscribedMessage(
      result: (json['result'] as num).toInt(),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$SubscribedMessageToJson(SubscribedMessage instance) =>
    <String, dynamic>{
      'result': instance.result,
      'id': instance.id,
    };
