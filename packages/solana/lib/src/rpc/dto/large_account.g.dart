// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'large_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LargeAccount _$LargeAccountFromJson(Map<String, dynamic> json) => LargeAccount(
      address: json['address'] as String,
      lamports: (json['lamports'] as num).toInt(),
    );

Map<String, dynamic> _$LargeAccountToJson(LargeAccount instance) =>
    <String, dynamic>{
      'address': instance.address,
      'lamports': instance.lamports,
    };

LargeAccountsResult _$LargeAccountsResultFromJson(Map<String, dynamic> json) =>
    LargeAccountsResult(
      context: Context.fromJson(json['context'] as Map<String, dynamic>),
      value: (json['value'] as List<dynamic>)
          .map((e) => LargeAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LargeAccountsResultToJson(
        LargeAccountsResult instance) =>
    <String, dynamic>{
      'context': instance.context.toJson(),
      'value': instance.value.map((e) => e.toJson()).toList(),
    };
