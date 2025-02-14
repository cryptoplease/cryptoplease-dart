// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epoch_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpochSchedule _$EpochScheduleFromJson(Map<String, dynamic> json) =>
    EpochSchedule(
      slotsPerEpoch: (json['slotsPerEpoch'] as num).toInt(),
      leaderScheduleSlotOffset:
          (json['leaderScheduleSlotOffset'] as num).toInt(),
      warmup: json['warmup'] as bool,
      firstNormalEpoch: (json['firstNormalEpoch'] as num).toInt(),
      firstNormalSlot: (json['firstNormalSlot'] as num).toInt(),
    );

Map<String, dynamic> _$EpochScheduleToJson(EpochSchedule instance) =>
    <String, dynamic>{
      'slotsPerEpoch': instance.slotsPerEpoch,
      'leaderScheduleSlotOffset': instance.leaderScheduleSlotOffset,
      'warmup': instance.warmup,
      'firstNormalEpoch': instance.firstNormalEpoch,
      'firstNormalSlot': instance.firstNormalSlot,
    };
