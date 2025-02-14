// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Header _$HeaderFromJson(Map<String, dynamic> json) => Header(
      numRequiredSignatures: (json['numRequiredSignatures'] as num).toInt(),
      numReadonlySignedAccounts:
          (json['numReadonlySignedAccounts'] as num).toInt(),
      numReadonlyUnsignedAccounts:
          (json['numReadonlyUnsignedAccounts'] as num).toInt(),
    );

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
      'numRequiredSignatures': instance.numRequiredSignatures,
      'numReadonlySignedAccounts': instance.numReadonlySignedAccounts,
      'numReadonlyUnsignedAccounts': instance.numReadonlyUnsignedAccounts,
    };
