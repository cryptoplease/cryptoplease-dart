// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_rate_governor_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeeRateGovernorValue _$FeeRateGovernorValueFromJson(
        Map<String, dynamic> json) =>
    FeeRateGovernorValue(
      burnPercent: (json['burnPercent'] as num).toInt(),
      maxLamportsPerSignature: (json['maxLamportsPerSignature'] as num).toInt(),
      minLamportsPerSignature: (json['minLamportsPerSignature'] as num).toInt(),
      targetLamportsPerSignature:
          (json['targetLamportsPerSignature'] as num).toInt(),
      targetSignaturesPerSlot: (json['targetSignaturesPerSlot'] as num).toInt(),
    );

Map<String, dynamic> _$FeeRateGovernorValueToJson(
        FeeRateGovernorValue instance) =>
    <String, dynamic>{
      'burnPercent': instance.burnPercent,
      'maxLamportsPerSignature': instance.maxLamportsPerSignature,
      'minLamportsPerSignature': instance.minLamportsPerSignature,
      'targetLamportsPerSignature': instance.targetLamportsPerSignature,
      'targetSignaturesPerSlot': instance.targetSignaturesPerSlot,
    };
