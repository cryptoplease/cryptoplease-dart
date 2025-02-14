// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignatureStatus _$SignatureStatusFromJson(Map<String, dynamic> json) =>
    SignatureStatus(
      slot: (json['slot'] as num).toInt(),
      confirmationStatus:
          $enumDecode(_$CommitmentEnumMap, json['confirmationStatus']),
      confirmations: (json['confirmations'] as num?)?.toInt(),
      err: json['err'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$SignatureStatusToJson(SignatureStatus instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'confirmations': instance.confirmations,
      'err': instance.err,
      'confirmationStatus': _$CommitmentEnumMap[instance.confirmationStatus]!,
    };

const _$CommitmentEnumMap = {
  Commitment.processed: 'processed',
  Commitment.confirmed: 'confirmed',
  Commitment.finalized: 'finalized',
};

SignatureStatusesResult _$SignatureStatusesResultFromJson(
        Map<String, dynamic> json) =>
    SignatureStatusesResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: (json['value'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : SignatureStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SignatureStatusesResultToJson(
        SignatureStatusesResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value.map((e) => e?.toJson()).toList(),
    };
