// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scalex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateScalexLinkResponseDtoImpl
    _$$GenerateScalexLinkResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$GenerateScalexLinkResponseDtoImpl(
          signedUrl: json['signedUrl'] as String,
        );

Map<String, dynamic> _$$GenerateScalexLinkResponseDtoImplToJson(
        _$GenerateScalexLinkResponseDtoImpl instance) =>
    <String, dynamic>{
      'signedUrl': instance.signedUrl,
    };

_$GenerateScalexLinkRequestDtoImpl _$$GenerateScalexLinkRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateScalexLinkRequestDtoImpl(
      type: json['type'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      amount: (json['amount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$GenerateScalexLinkRequestDtoImplToJson(
        _$GenerateScalexLinkRequestDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'address': instance.address,
      'email': instance.email,
      'amount': instance.amount,
      'currency': instance.currency,
    };

_$OrderStatusScalexRequestDtoImpl _$$OrderStatusScalexRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusScalexRequestDtoImpl(
      referenceId: json['referenceId'] as String,
    );

Map<String, dynamic> _$$OrderStatusScalexRequestDtoImplToJson(
        _$OrderStatusScalexRequestDtoImpl instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
    };

_$OrderStatusScalexResponseDtoImpl _$$OrderStatusScalexResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusScalexResponseDtoImpl(
      status: $enumDecode(_$ScalexOrderStatusEnumMap, json['status'],
          unknownValue: ScalexOrderStatus.unknown),
      onRampDetails: json['onRampDetails'] == null
          ? null
          : OnRampScalexDetails.fromJson(
              json['onRampDetails'] as Map<String, dynamic>),
      offRampDetails: json['offRampDetails'] == null
          ? null
          : OffRampScalexDetails.fromJson(
              json['offRampDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderStatusScalexResponseDtoImplToJson(
        _$OrderStatusScalexResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': _$ScalexOrderStatusEnumMap[instance.status]!,
      'onRampDetails': instance.onRampDetails,
      'offRampDetails': instance.offRampDetails,
    };

const _$ScalexOrderStatusEnumMap = {
  ScalexOrderStatus.pending: 'pending',
  ScalexOrderStatus.completed: 'completed',
  ScalexOrderStatus.expired: 'expired',
  ScalexOrderStatus.failed: 'failed',
  ScalexOrderStatus.unknown: 'unknown',
};

_$ScalexWithdrawRequestDtoImpl _$$ScalexWithdrawRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScalexWithdrawRequestDtoImpl(
      orderId: json['orderId'] as String,
      cluster: $enumDecode(_$ClusterEnumMap, json['cluster']),
    );

Map<String, dynamic> _$$ScalexWithdrawRequestDtoImplToJson(
        _$ScalexWithdrawRequestDtoImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'cluster': _$ClusterEnumMap[instance.cluster]!,
    };

const _$ClusterEnumMap = {
  Cluster.mainnet: 'mainnet',
  Cluster.devnet: 'devnet',
};

_$WithdrawPaymentResponseDtoImpl _$$WithdrawPaymentResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawPaymentResponseDtoImpl(
      fee: (json['fee'] as num).toInt(),
      transaction: json['transaction'] as String,
      slot: BigInt.parse(json['slot'] as String),
    );

Map<String, dynamic> _$$WithdrawPaymentResponseDtoImplToJson(
        _$WithdrawPaymentResponseDtoImpl instance) =>
    <String, dynamic>{
      'fee': instance.fee,
      'transaction': instance.transaction,
      'slot': instance.slot.toString(),
    };

_$OnRampScalexDetailsImpl _$$OnRampScalexDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OnRampScalexDetailsImpl(
      currency: json['currency'] as String,
      bankName: json['bankName'] as String,
      bankAccount: json['bankAccount'] as String,
      fromAmount: json['fromAmount'] as num,
      fiatCurrency: json['fiatCurrency'] as String,
    );

Map<String, dynamic> _$$OnRampScalexDetailsImplToJson(
        _$OnRampScalexDetailsImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
      'fromAmount': instance.fromAmount,
      'fiatCurrency': instance.fiatCurrency,
    };

_$OffRampScalexDetailsImpl _$$OffRampScalexDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OffRampScalexDetailsImpl(
      depositAddress: json['depositAddress'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$OffRampScalexDetailsImplToJson(
        _$OffRampScalexDetailsImpl instance) =>
    <String, dynamic>{
      'depositAddress': instance.depositAddress,
      'amount': instance.amount,
    };

_$ScalexRateFeeResponseDtoImpl _$$ScalexRateFeeResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScalexRateFeeResponseDtoImpl(
      offRampRate: (json['offRampRate'] as num).toDouble(),
      offRampFeePercentage: (json['offRampFeePercentage'] as num).toDouble(),
      fixedOffRampFee: (json['fixedOffRampFee'] as num).toDouble(),
      onRampRate: (json['onRampRate'] as num?)?.toDouble(),
      onRampFeePercentage: (json['onRampFeePercentage'] as num?)?.toDouble(),
      fixedOnRampFee: (json['fixedOnRampFee'] as num?)?.toDouble(),
      espressoFeePercentage: (json['espressoFeePercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$ScalexRateFeeResponseDtoImplToJson(
        _$ScalexRateFeeResponseDtoImpl instance) =>
    <String, dynamic>{
      'offRampRate': instance.offRampRate,
      'offRampFeePercentage': instance.offRampFeePercentage,
      'fixedOffRampFee': instance.fixedOffRampFee,
      'onRampRate': instance.onRampRate,
      'onRampFeePercentage': instance.onRampFeePercentage,
      'fixedOnRampFee': instance.fixedOnRampFee,
      'espressoFeePercentage': instance.espressoFeePercentage,
    };

_$ScalexBrijFeeRequestDtoImpl _$$ScalexBrijFeeRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScalexBrijFeeRequestDtoImpl(
      amount: json['amount'] as String,
      type: $enumDecode(_$RampTypeDtoEnumMap, json['type']),
    );

Map<String, dynamic> _$$ScalexBrijFeeRequestDtoImplToJson(
        _$ScalexBrijFeeRequestDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': _$RampTypeDtoEnumMap[instance.type]!,
    };

const _$RampTypeDtoEnumMap = {
  RampTypeDto.onRamp: 'onRamp',
  RampTypeDto.offRamp: 'offRamp',
};

_$ScalexFeesImpl _$$ScalexFeesImplFromJson(Map<String, dynamic> json) =>
    _$ScalexFeesImpl(
      fixedFee: (json['fixedFee'] as num).toDouble(),
      marginFee: (json['marginFee'] as num).toDouble(),
      percentageFee: (json['percentageFee'] as num).toDouble(),
      percentageFeeAmount: (json['percentageFeeAmount'] as num).toDouble(),
      totalFee: (json['totalFee'] as num).toDouble(),
    );

Map<String, dynamic> _$$ScalexFeesImplToJson(_$ScalexFeesImpl instance) =>
    <String, dynamic>{
      'fixedFee': instance.fixedFee,
      'marginFee': instance.marginFee,
      'percentageFee': instance.percentageFee,
      'percentageFeeAmount': instance.percentageFeeAmount,
      'totalFee': instance.totalFee,
    };

_$ScalexBrijFeeResponseDtoImpl _$$ScalexBrijFeeResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScalexBrijFeeResponseDtoImpl(
      fiatAmount: (json['fiatAmount'] as num).toDouble(),
      cryptoAmount: (json['cryptoAmount'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
      scalexFees:
          ScalexFees.fromJson(json['scalexFees'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScalexBrijFeeResponseDtoImplToJson(
        _$ScalexBrijFeeResponseDtoImpl instance) =>
    <String, dynamic>{
      'fiatAmount': instance.fiatAmount,
      'cryptoAmount': instance.cryptoAmount,
      'rate': instance.rate,
      'scalexFees': instance.scalexFees,
    };
