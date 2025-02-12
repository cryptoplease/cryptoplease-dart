// ignore_for_file: invalid_annotation_target

import 'package:espressocash_api/espressocash_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scalex.freezed.dart';
part 'scalex.g.dart';

@freezed
class GenerateScalexLinkResponseDto with _$GenerateScalexLinkResponseDto {
  const factory GenerateScalexLinkResponseDto({
    required String signedUrl,
  }) = _GenerateScalexLinkResponseDto;

  factory GenerateScalexLinkResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GenerateScalexLinkResponseDtoFromJson(json);
}

@freezed
class GenerateScalexLinkRequestDto with _$GenerateScalexLinkRequestDto {
  const factory GenerateScalexLinkRequestDto({
    required String type,
    required String address,
    required String email,
    double? amount,
    String? currency,
  }) = _GenerateScalexLinkRequestDto;

  factory GenerateScalexLinkRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GenerateScalexLinkRequestDtoFromJson(json);
}

@freezed
class OrderStatusScalexRequestDto with _$OrderStatusScalexRequestDto {
  const factory OrderStatusScalexRequestDto({
    required String referenceId,
  }) = _OrderStatusScalexRequestDto;

  factory OrderStatusScalexRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusScalexRequestDtoFromJson(json);
}

@freezed
class OrderStatusScalexResponseDto with _$OrderStatusScalexResponseDto {
  const factory OrderStatusScalexResponseDto({
    @JsonKey(unknownEnumValue: ScalexOrderStatus.unknown)
    required ScalexOrderStatus status,
    OnRampScalexDetails? onRampDetails,
    OffRampScalexDetails? offRampDetails,
  }) = _OrderStatusScalexResponseDto;

  factory OrderStatusScalexResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusScalexResponseDtoFromJson(json);
}

@freezed
class ScalexWithdrawRequestDto with _$ScalexWithdrawRequestDto {
  const factory ScalexWithdrawRequestDto({
    required String orderId,
    required Cluster cluster,
  }) = _ScalexWithdrawRequestDto;

  factory ScalexWithdrawRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ScalexWithdrawRequestDtoFromJson(json);
}

@freezed
class ScalexWithdrawResponseDto with _$ScalexWithdrawResponseDto {
  const factory ScalexWithdrawResponseDto({
    required int fee,
    required String transaction,
    required BigInt slot,
  }) = _WithdrawPaymentResponseDto;

  factory ScalexWithdrawResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ScalexWithdrawResponseDtoFromJson(json);
}

@freezed
class OnRampScalexDetails with _$OnRampScalexDetails {
  const factory OnRampScalexDetails({
    required String currency,
    required String bankName,
    required String bankAccount,
    required num fromAmount,
    required String fiatCurrency,
  }) = _OnRampScalexDetails;

  factory OnRampScalexDetails.fromJson(Map<String, dynamic> json) =>
      _$OnRampScalexDetailsFromJson(json);
}

@freezed
class OffRampScalexDetails with _$OffRampScalexDetails {
  const factory OffRampScalexDetails({
    required String depositAddress,
    required int amount,
  }) = _OffRampScalexDetails;

  factory OffRampScalexDetails.fromJson(Map<String, dynamic> json) =>
      _$OffRampScalexDetailsFromJson(json);
}

@freezed
class ScalexRateFeeResponseDto with _$ScalexRateFeeResponseDto {
  const factory ScalexRateFeeResponseDto({
    required double offRampRate,
    required double offRampFeePercentage,
    required double fixedOffRampFee,
    double? onRampRate,
    double? onRampFeePercentage,
    double? fixedOnRampFee,
    required double espressoFeePercentage,
  }) = _ScalexRateFeeResponseDto;

  factory ScalexRateFeeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ScalexRateFeeResponseDtoFromJson(json);
}

@freezed
class ScalexBrijFeeRequestDto with _$ScalexBrijFeeRequestDto {
  const factory ScalexBrijFeeRequestDto({
    required String amount,
    required RampTypeDto type,
  }) = _ScalexBrijFeeRequestDto;

  factory ScalexBrijFeeRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ScalexBrijFeeRequestDtoFromJson(json);
}

@freezed
class ScalexFees with _$ScalexFees {
  const factory ScalexFees({
    required double fixedFee,
    required double marginFee,
    required double percentageFee,
    required double percentageFeeAmount,
    required double totalFee,
  }) = _ScalexFees;

  factory ScalexFees.fromJson(Map<String, dynamic> json) =>
      _$ScalexFeesFromJson(json);
}

@freezed
class ScalexBrijFeeResponseDto with _$ScalexBrijFeeResponseDto {
  const factory ScalexBrijFeeResponseDto({
    required double fiatAmount,
    required double cryptoAmount,
    required double rate,
    required ScalexFees scalexFees,
  }) = _ScalexBrijFeeResponseDto;

  factory ScalexBrijFeeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ScalexBrijFeeResponseDtoFromJson(json);
}

@JsonEnum()
enum ScalexOrderStatus {
  pending,
  completed,
  expired,
  failed,
  unknown,
}
