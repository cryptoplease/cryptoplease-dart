// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorMessage _$ErrorMessageFromJson(Map<String, dynamic> json) => ErrorMessage(
      error: SubscribeError.fromJson(json['error'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$ErrorMessageToJson(ErrorMessage instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
      'id': instance.id,
    };
