// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solana_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SolanaVersion _$SolanaVersionFromJson(Map<String, dynamic> json) =>
    SolanaVersion(
      solanaCore: json['solana-core'] as String,
      featureSet: (json['feature-set'] as num).toInt(),
    );

Map<String, dynamic> _$SolanaVersionToJson(SolanaVersion instance) =>
    <String, dynamic>{
      'solana-core': instance.solanaCore,
      'feature-set': instance.featureSet,
    };
