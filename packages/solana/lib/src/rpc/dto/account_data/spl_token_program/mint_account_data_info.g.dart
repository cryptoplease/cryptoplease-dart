// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mint_account_data_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MintAccountDataInfo _$MintAccountDataInfoFromJson(Map<String, dynamic> json) =>
    MintAccountDataInfo(
      mintAuthority: json['mintAuthority'] as String?,
      freezedAuthority: json['freezedAuthority'] as String?,
      isInitialized: json['isInitialized'] as bool,
      decimals: (json['decimals'] as num).toInt(),
      supply: json['supply'] as String,
    );

Map<String, dynamic> _$MintAccountDataInfoToJson(
        MintAccountDataInfo instance) =>
    <String, dynamic>{
      'mintAuthority': instance.mintAuthority,
      'freezedAuthority': instance.freezedAuthority,
      'isInitialized': instance.isInitialized,
      'supply': instance.supply,
      'decimals': instance.decimals,
    };
