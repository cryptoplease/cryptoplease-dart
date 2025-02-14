// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) => Block(
      blockhash: json['blockhash'] as String,
      previousBlockhash: json['previousBlockhash'] as String,
      parentSlot: (json['parentSlot'] as num).toInt(),
      transactions: (json['transactions'] as List<dynamic>)
          .map(Transaction.fromJson)
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      signatures: (json['signatures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
      blockTime: (json['blockTime'] as num?)?.toInt(),
      blockHeight: (json['blockHeight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BlockToJson(Block instance) => <String, dynamic>{
      'blockhash': instance.blockhash,
      'previousBlockhash': instance.previousBlockhash,
      'parentSlot': instance.parentSlot,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
      'signatures': instance.signatures,
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
      'blockTime': instance.blockTime,
      'blockHeight': instance.blockHeight,
    };
