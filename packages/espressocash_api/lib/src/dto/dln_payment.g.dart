// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dln_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentQuoteRequestDtoImpl _$$PaymentQuoteRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentQuoteRequestDtoImpl(
      amount: json['amount'] as String,
      receiverAddress: json['receiverAddress'] as String,
      receiverBlockchain: json['receiverBlockchain'] as String,
    );

Map<String, dynamic> _$$PaymentQuoteRequestDtoImplToJson(
        _$PaymentQuoteRequestDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'receiverAddress': instance.receiverAddress,
      'receiverBlockchain': instance.receiverBlockchain,
    };

_$PaymentQuoteResponseDtoImpl _$$PaymentQuoteResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentQuoteResponseDtoImpl(
      inputAmount: json['inputAmount'] as String,
      receiverAmount: json['receiverAmount'] as String,
      encodedTx: json['encodedTx'] as String,
      feeInUsdc: json['feeInUsdc'] as int,
      slot: BigInt.parse(json['slot'] as String),
    );

Map<String, dynamic> _$$PaymentQuoteResponseDtoImplToJson(
        _$PaymentQuoteResponseDtoImpl instance) =>
    <String, dynamic>{
      'inputAmount': instance.inputAmount,
      'receiverAmount': instance.receiverAmount,
      'encodedTx': instance.encodedTx,
      'feeInUsdc': instance.feeInUsdc,
      'slot': instance.slot.toString(),
    };