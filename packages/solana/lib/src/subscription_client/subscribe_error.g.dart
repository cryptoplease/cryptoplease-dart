// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscribeError _$SubscribeErrorFromJson(Map<String, dynamic> json) =>
    SubscribeError(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$SubscribeErrorToJson(SubscribeError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
