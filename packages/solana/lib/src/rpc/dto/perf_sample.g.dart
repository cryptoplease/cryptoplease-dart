// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perf_sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PerfSample _$PerfSampleFromJson(Map<String, dynamic> json) => PerfSample(
      slot: (json['slot'] as num).toInt(),
      numTransactions: (json['numTransactions'] as num).toInt(),
      numSlots: (json['numSlots'] as num).toInt(),
      samplePeriodSecs: (json['samplePeriodSecs'] as num).toInt(),
    );

Map<String, dynamic> _$PerfSampleToJson(PerfSample instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'numTransactions': instance.numTransactions,
      'numSlots': instance.numSlots,
      'samplePeriodSecs': instance.samplePeriodSecs,
    };
