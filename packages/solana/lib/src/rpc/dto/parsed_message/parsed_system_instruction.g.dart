// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_system_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParsedSystemTransferInstructionImpl
    _$$ParsedSystemTransferInstructionImplFromJson(Map<String, dynamic> json) =>
        _$ParsedSystemTransferInstructionImpl(
          info: ParsedSystemTransferInformation.fromJson(
              json['info'] as Map<String, dynamic>),
          type: json['type'] as String,
        );

Map<String, dynamic> _$$ParsedSystemTransferInstructionImplToJson(
        _$ParsedSystemTransferInstructionImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'type': instance.type,
    };

_$ParsedSystemTransferCheckedInstructionImpl
    _$$ParsedSystemTransferCheckedInstructionImplFromJson(
            Map<String, dynamic> json) =>
        _$ParsedSystemTransferCheckedInstructionImpl(
          info: ParsedSystemTransferInformation.fromJson(
              json['info'] as Map<String, dynamic>),
          type: json['type'] as String,
        );

Map<String, dynamic> _$$ParsedSystemTransferCheckedInstructionImplToJson(
        _$ParsedSystemTransferCheckedInstructionImpl instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'type': instance.type,
    };

_$ParsedSystemUnsupportedInstructionImpl
    _$$ParsedSystemUnsupportedInstructionImplFromJson(
            Map<String, dynamic> json) =>
        _$ParsedSystemUnsupportedInstructionImpl(
          type: json['type'] as String,
        );

Map<String, dynamic> _$$ParsedSystemUnsupportedInstructionImplToJson(
        _$ParsedSystemUnsupportedInstructionImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$ParsedSystemTransferInformationImpl
    _$$ParsedSystemTransferInformationImplFromJson(Map<String, dynamic> json) =>
        _$ParsedSystemTransferInformationImpl(
          lamports: (json['lamports'] as num).toInt(),
          source: json['source'] as String,
          destination: json['destination'] as String,
        );

Map<String, dynamic> _$$ParsedSystemTransferInformationImplToJson(
        _$ParsedSystemTransferInformationImpl instance) =>
    <String, dynamic>{
      'lamports': instance.lamports,
      'source': instance.source,
      'destination': instance.destination,
    };
