// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RawInstruction _$RawInstructionFromJson(Map<String, dynamic> json) =>
    RawInstruction(
      programIdIndex: (json['programIdIndex'] as num).toInt(),
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      data: json['data'] as String,
    );

Map<String, dynamic> _$RawInstructionToJson(RawInstruction instance) =>
    <String, dynamic>{
      'programIdIndex': instance.programIdIndex,
      'accounts': instance.accounts,
      'data': instance.data,
    };
