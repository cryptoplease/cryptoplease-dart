// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) =>
    TransactionDetails(
      slot: (json['slot'] as num).toInt(),
      transaction: Transaction.fromJson(json['transaction']),
      blockTime: (json['blockTime'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      version: json['version'] == null
          ? null
          : TransactionVersion.fromJson(json['version']),
    );

Map<String, dynamic> _$TransactionDetailsToJson(TransactionDetails instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'transaction': instance.transaction.toJson(),
      'blockTime': instance.blockTime,
      'meta': instance.meta?.toJson(),
      'version': instance.version?.toJson(),
    };
