// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_table_lookups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressTableLookups _$AddressTableLookupsFromJson(Map<String, dynamic> json) =>
    AddressTableLookups(
      accountKey: json['accountKey'] as String,
      writableIndexes: (json['writableIndexes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      readonlyIndexes: (json['readonlyIndexes'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$AddressTableLookupsToJson(
        AddressTableLookups instance) =>
    <String, dynamic>{
      'accountKey': instance.accountKey,
      'writableIndexes': instance.writableIndexes,
      'readonlyIndexes': instance.readonlyIndexes,
    };
