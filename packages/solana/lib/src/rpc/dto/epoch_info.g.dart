// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epoch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpochInfo _$EpochInfoFromJson(Map<String, dynamic> json) => EpochInfo(
      absoluteSlot: (json['absoluteSlot'] as num).toInt(),
      blockHeight: (json['blockHeight'] as num).toInt(),
      epoch: (json['epoch'] as num).toInt(),
      slotIndex: (json['slotIndex'] as num).toInt(),
      slotsInEpoch: (json['slotsInEpoch'] as num).toInt(),
      transactionCount: (json['transactionCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EpochInfoToJson(EpochInfo instance) => <String, dynamic>{
      'absoluteSlot': instance.absoluteSlot,
      'blockHeight': instance.blockHeight,
      'epoch': instance.epoch,
      'slotIndex': instance.slotIndex,
      'slotsInEpoch': instance.slotsInEpoch,
      'transactionCount': instance.transactionCount,
    };
