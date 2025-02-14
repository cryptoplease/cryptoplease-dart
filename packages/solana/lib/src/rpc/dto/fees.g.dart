// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fees _$FeesFromJson(Map<String, dynamic> json) => Fees(
      blockhash: json['blockhash'] as String,
      feeCalculator:
          FeeCalculator.fromJson(json['feeCalculator'] as Map<String, dynamic>),
      lastValidBlockHeight: (json['lastValidBlockHeight'] as num).toInt(),
    );

Map<String, dynamic> _$FeesToJson(Fees instance) => <String, dynamic>{
      'blockhash': instance.blockhash,
      'feeCalculator': instance.feeCalculator.toJson(),
      'lastValidBlockHeight': instance.lastValidBlockHeight,
    };

FeesResult _$FeesResultFromJson(Map<String, dynamic> json) => FeesResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: Fees.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeesResultToJson(FeesResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value.toJson(),
    };
