// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceResult _$BalanceResultFromJson(Map<String, dynamic> json) =>
    BalanceResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$BalanceResultToJson(BalanceResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value,
    };
