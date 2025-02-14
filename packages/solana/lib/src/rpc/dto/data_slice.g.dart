// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataSlice _$DataSliceFromJson(Map<String, dynamic> json) => DataSlice(
      offset: (json['offset'] as num?)?.toInt(),
      length: (json['length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataSliceToJson(DataSlice instance) => <String, dynamic>{
      if (instance.offset case final value?) 'offset': value,
      if (instance.length case final value?) 'length': value,
    };
