// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stake _$StakeFromJson(Map<String, dynamic> json) => Stake(
      delegation:
          Delegation.fromJson(json['delegation'] as Map<String, dynamic>),
      creditsObserved: (json['creditsObserved'] as num).toInt(),
    );

Map<String, dynamic> _$StakeToJson(Stake instance) => <String, dynamic>{
      'delegation': instance.delegation.toJson(),
      'creditsObserved': instance.creditsObserved,
    };
