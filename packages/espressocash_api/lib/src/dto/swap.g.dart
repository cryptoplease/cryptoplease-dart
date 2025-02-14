// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwapRouteRequestDtoImpl _$$SwapRouteRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SwapRouteRequestDtoImpl(
      inputToken: json['inputToken'] as String,
      outputToken: json['outputToken'] as String,
      amount: json['amount'] as String,
      match: $enumDecode(_$SwapMatchEnumMap, json['match']),
      slippage: $enumDecode(_$SwapSlippageEnumMap, json['slippage']),
      userAccount: json['userAccount'] as String,
      asLegacyTx: json['asLegacyTx'] as bool? ?? true,
    );

Map<String, dynamic> _$$SwapRouteRequestDtoImplToJson(
        _$SwapRouteRequestDtoImpl instance) =>
    <String, dynamic>{
      'inputToken': instance.inputToken,
      'outputToken': instance.outputToken,
      'amount': instance.amount,
      'match': _$SwapMatchEnumMap[instance.match]!,
      'slippage': _$SwapSlippageEnumMap[instance.slippage]!,
      'userAccount': instance.userAccount,
      'asLegacyTx': instance.asLegacyTx,
    };

const _$SwapMatchEnumMap = {
  SwapMatch.inAmount: 'inAmount',
  SwapMatch.outAmount: 'outAmount',
};

const _$SwapSlippageEnumMap = {
  SwapSlippage.zpOne: 'zpOne',
  SwapSlippage.zpFive: 'zpFive',
  SwapSlippage.onePercent: 'onePercent',
};

_$SwapRouteResponseDtoImpl _$$SwapRouteResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SwapRouteResponseDtoImpl(
      inAmount: json['inAmount'] as String,
      outAmount: json['outAmount'] as String,
      amount: json['amount'] as String,
      slippageBps: (json['slippageBps'] as num).toInt(),
      platformFeeBps: (json['platformFeeBps'] as num).toInt(),
      priceImpact: json['priceImpact'] as String,
      providerLabel: json['providerLabel'] as String,
      encodedTx: json['encodedTx'] as String,
      feeInUsdc: (json['feeInUsdc'] as num).toInt(),
      slot: BigInt.parse(json['slot'] as String),
    );

Map<String, dynamic> _$$SwapRouteResponseDtoImplToJson(
        _$SwapRouteResponseDtoImpl instance) =>
    <String, dynamic>{
      'inAmount': instance.inAmount,
      'outAmount': instance.outAmount,
      'amount': instance.amount,
      'slippageBps': instance.slippageBps,
      'platformFeeBps': instance.platformFeeBps,
      'priceImpact': instance.priceImpact,
      'providerLabel': instance.providerLabel,
      'encodedTx': instance.encodedTx,
      'feeInUsdc': instance.feeInUsdc,
      'slot': instance.slot.toString(),
    };
