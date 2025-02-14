// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Supply _$SupplyFromJson(Map<String, dynamic> json) => Supply(
      total: (json['total'] as num).toInt(),
      circulating: (json['circulating'] as num).toInt(),
      nonCirculating: (json['nonCirculating'] as num).toInt(),
      nonCirculatingAccounts: (json['nonCirculatingAccounts'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SupplyToJson(Supply instance) => <String, dynamic>{
      'total': instance.total,
      'circulating': instance.circulating,
      'nonCirculating': instance.nonCirculating,
      'nonCirculatingAccounts': instance.nonCirculatingAccounts,
    };

SupplyResult _$SupplyResultFromJson(Map<String, dynamic> json) => SupplyResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: Supply.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SupplyResultToJson(SupplyResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value.toJson(),
    };
