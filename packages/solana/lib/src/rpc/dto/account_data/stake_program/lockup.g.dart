// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lockup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lockup _$LockupFromJson(Map<String, dynamic> json) => Lockup(
      custodian: json['custodian'] as String,
      epoch: (json['epoch'] as num).toInt(),
      unixTimestamp: (json['unixTimestamp'] as num).toInt(),
    );

Map<String, dynamic> _$LockupToJson(Lockup instance) => <String, dynamic>{
      'custodian': instance.custodian,
      'epoch': instance.epoch,
      'unixTimestamp': instance.unixTimestamp,
    };
