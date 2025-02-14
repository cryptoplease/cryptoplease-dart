// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake_activation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakeActivation _$StakeActivationFromJson(Map<String, dynamic> json) =>
    StakeActivation(
      state: $enumDecode(_$StakeActivationStateEnumMap, json['state']),
      active: (json['active'] as num).toInt(),
      inactive: (json['inactive'] as num).toInt(),
    );

Map<String, dynamic> _$StakeActivationToJson(StakeActivation instance) =>
    <String, dynamic>{
      'state': _$StakeActivationStateEnumMap[instance.state]!,
      'active': instance.active,
      'inactive': instance.inactive,
    };

const _$StakeActivationStateEnumMap = {
  StakeActivationState.activating: 'activating',
  StakeActivationState.active: 'active',
  StakeActivationState.deactivating: 'deactivating',
  StakeActivationState.inactive: 'inactive',
};
