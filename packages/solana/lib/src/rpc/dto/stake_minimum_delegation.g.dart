// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake_minimum_delegation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakeMinimumDelegationResult _$StakeMinimumDelegationResultFromJson(
        Map<String, dynamic> json) =>
    StakeMinimumDelegationResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$StakeMinimumDelegationResultToJson(
        StakeMinimumDelegationResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value,
    };
