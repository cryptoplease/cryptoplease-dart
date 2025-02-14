// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_calculator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeeCalculator _$FeeCalculatorFromJson(Map<String, dynamic> json) =>
    FeeCalculator(
      lamportsPerSignature: (json['lamportsPerSignature'] as num).toInt(),
    );

Map<String, dynamic> _$FeeCalculatorToJson(FeeCalculator instance) =>
    <String, dynamic>{
      'lamportsPerSignature': instance.lamportsPerSignature,
    };
