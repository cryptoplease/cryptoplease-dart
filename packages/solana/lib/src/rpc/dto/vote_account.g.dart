// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoteAccount _$VoteAccountFromJson(Map<String, dynamic> json) => VoteAccount(
      votePubkey: json['votePubkey'] as String,
      nodePubkey: json['nodePubkey'] as String,
      activatedStake: (json['activatedStake'] as num).toInt(),
      epochVoteAccount: json['epochVoteAccount'] as bool,
      commission: (json['commission'] as num).toInt(),
      lastVote: (json['lastVote'] as num).toInt(),
      epochCredits: (json['epochCredits'] as List<dynamic>)
          .map(EpochCredits.fromJson)
          .toList(),
    );

Map<String, dynamic> _$VoteAccountToJson(VoteAccount instance) =>
    <String, dynamic>{
      'votePubkey': instance.votePubkey,
      'nodePubkey': instance.nodePubkey,
      'activatedStake': instance.activatedStake,
      'epochVoteAccount': instance.epochVoteAccount,
      'commission': instance.commission,
      'lastVote': instance.lastVote,
      'epochCredits': instance.epochCredits.map((e) => e.toJson()).toList(),
    };
