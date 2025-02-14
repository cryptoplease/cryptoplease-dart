import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap.freezed.dart';
part 'swap.g.dart';

enum SwapMatch { inAmount, outAmount }

enum SwapSlippage { zpOne, zpFive, onePercent }

@freezed
class SwapRouteRequestDto with _$SwapRouteRequestDto {
  const factory SwapRouteRequestDto({
    required String inputToken,
    required String outputToken,
    required String amount,
    required SwapMatch match,
    required SwapSlippage slippage,
    required String userAccount,
    @Default(true) bool asLegacyTx,
  }) = _SwapRouteRequestDto;

  factory SwapRouteRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SwapRouteRequestDtoFromJson(json);
}

@freezed
class SwapRouteResponseDto with _$SwapRouteResponseDto {
  const factory SwapRouteResponseDto({
    required String inAmount,
    required String outAmount,
    required String amount,
    required int slippageBps,
    required int platformFeeBps,
    required String priceImpact,
    required String providerLabel,
    required String encodedTx,
    required int feeInUsdc,
    required BigInt slot,
  }) = _SwapRouteResponseDto;

  factory SwapRouteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SwapRouteResponseDtoFromJson(json);
}
