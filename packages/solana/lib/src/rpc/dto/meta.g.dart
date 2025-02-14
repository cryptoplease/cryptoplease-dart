// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      err: json['err'] as Map<String, dynamic>?,
      fee: (json['fee'] as num).toInt(),
      preBalances: (json['preBalances'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      postBalances: (json['postBalances'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      innerInstructions: (json['innerInstructions'] as List<dynamic>?)
          ?.map((e) => InnerInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      preTokenBalances: (json['preTokenBalances'] as List<dynamic>)
          .map((e) => TokenBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      postTokenBalances: (json['postTokenBalances'] as List<dynamic>)
          .map((e) => TokenBalance.fromJson(e as Map<String, dynamic>))
          .toList(),
      logMessages: (json['logMessages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadedAddresses: json['loadedAddresses'] == null
          ? null
          : LoadedAddresses.fromJson(
              json['loadedAddresses'] as Map<String, dynamic>),
      returnData: json['returnData'] == null
          ? null
          : ReturnData.fromJson(json['returnData'] as Map<String, dynamic>),
      computeUnitsConsumed: (json['computeUnitsConsumed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'err': instance.err,
      'fee': instance.fee,
      'preBalances': instance.preBalances,
      'postBalances': instance.postBalances,
      'innerInstructions':
          instance.innerInstructions?.map((e) => e.toJson()).toList(),
      'preTokenBalances':
          instance.preTokenBalances.map((e) => e.toJson()).toList(),
      'postTokenBalances':
          instance.postTokenBalances.map((e) => e.toJson()).toList(),
      'logMessages': instance.logMessages,
      'rewards': instance.rewards?.map((e) => e.toJson()).toList(),
      'loadedAddresses': instance.loadedAddresses?.toJson(),
      'returnData': instance.returnData?.toJson(),
      'computeUnitsConsumed': instance.computeUnitsConsumed,
    };
