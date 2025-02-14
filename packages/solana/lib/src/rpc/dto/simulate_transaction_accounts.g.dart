// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulate_transaction_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimulateTransactionAccounts _$SimulateTransactionAccountsFromJson(
        Map<String, dynamic> json) =>
    SimulateTransactionAccounts(
      encoding: $enumDecodeNullable(_$EncodingEnumMap, json['encoding']),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SimulateTransactionAccountsToJson(
        SimulateTransactionAccounts instance) =>
    <String, dynamic>{
      if (_$EncodingEnumMap[instance.encoding] case final value?)
        'encoding': value,
      if (instance.addresses case final value?) 'addresses': value,
    };

const _$EncodingEnumMap = {
  Encoding.base64: 'base64',
  Encoding.jsonParsed: 'jsonParsed',
  Encoding.base58: 'base58',
  Encoding.json: 'json',
};
