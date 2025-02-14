// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InnerInstruction _$InnerInstructionFromJson(Map<String, dynamic> json) =>
    InnerInstruction(
      index: (json['index'] as num).toInt(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => Instruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InnerInstructionToJson(InnerInstruction instance) =>
    <String, dynamic>{
      'index': instance.index,
      'instructions': instance.instructions.map((e) => e.toJson()).toList(),
    };
