// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highest_snapshot_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighestSnapshotSlot _$HighestSnapshotSlotFromJson(Map<String, dynamic> json) =>
    HighestSnapshotSlot(
      full: (json['full'] as num).toInt(),
      incremental: (json['incremental'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HighestSnapshotSlotToJson(
        HighestSnapshotSlot instance) =>
    <String, dynamic>{
      'full': instance.full,
      'incremental': instance.incremental,
    };
