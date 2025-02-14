// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_signature_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionSignatureInformation _$TransactionSignatureInformationFromJson(
        Map<String, dynamic> json) =>
    TransactionSignatureInformation(
      signature: json['signature'] as String,
      slot: (json['slot'] as num).toInt(),
      err: json['err'] as Map<String, dynamic>?,
      memo: json['memo'] as String?,
      blockTime: (json['blockTime'] as num?)?.toInt(),
      confirmationStatus:
          $enumDecodeNullable(_$CommitmentEnumMap, json['confirmationStatus']),
    );

Map<String, dynamic> _$TransactionSignatureInformationToJson(
        TransactionSignatureInformation instance) =>
    <String, dynamic>{
      'signature': instance.signature,
      'slot': instance.slot,
      'err': instance.err,
      'memo': instance.memo,
      'blockTime': instance.blockTime,
      'confirmationStatus': _$CommitmentEnumMap[instance.confirmationStatus],
    };

const _$CommitmentEnumMap = {
  Commitment.processed: 'processed',
  Commitment.confirmed: 'confirmed',
  Commitment.finalized: 'finalized',
};
