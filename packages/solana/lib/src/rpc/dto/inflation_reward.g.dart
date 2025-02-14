// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inflation_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InflationReward _$InflationRewardFromJson(Map<String, dynamic> json) =>
    InflationReward(
      epoch: (json['epoch'] as num).toInt(),
      effectiveSlot: (json['effectiveSlot'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      postBalance: (json['postBalance'] as num).toInt(),
      commission: (json['commission'] as num).toInt(),
    );

Map<String, dynamic> _$InflationRewardToJson(InflationReward instance) =>
    <String, dynamic>{
      'epoch': instance.epoch,
      'effectiveSlot': instance.effectiveSlot,
      'amount': instance.amount,
      'postBalance': instance.postBalance,
      'commission': instance.commission,
    };
