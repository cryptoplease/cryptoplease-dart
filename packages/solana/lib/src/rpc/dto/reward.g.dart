// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      pubkey: json['pubkey'] as String,
      lamports: (json['lamports'] as num).toInt(),
      postBalance: (json['postBalance'] as num).toInt(),
      rewardType: $enumDecode(_$RewardTypeEnumMap, json['rewardType']),
      commission: (json['commission'] as num).toInt(),
    );

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'pubkey': instance.pubkey,
      'lamports': instance.lamports,
      'postBalance': instance.postBalance,
      'rewardType': _$RewardTypeEnumMap[instance.rewardType]!,
      'commission': instance.commission,
    };

const _$RewardTypeEnumMap = {
  RewardType.fee: 'fee',
  RewardType.rent: 'rent',
  RewardType.staking: 'staking',
  RewardType.voting: 'voting',
};
