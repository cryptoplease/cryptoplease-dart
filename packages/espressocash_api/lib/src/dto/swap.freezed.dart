// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SwapRouteRequestDto _$SwapRouteRequestDtoFromJson(Map<String, dynamic> json) {
  return _SwapRouteRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SwapRouteRequestDto {
  String get inputToken => throw _privateConstructorUsedError;
  String get outputToken => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  SwapMatch get match => throw _privateConstructorUsedError;
  SwapSlippage get slippage => throw _privateConstructorUsedError;
  String get userAccount => throw _privateConstructorUsedError;
  bool get asLegacyTx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapRouteRequestDtoCopyWith<SwapRouteRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapRouteRequestDtoCopyWith<$Res> {
  factory $SwapRouteRequestDtoCopyWith(
          SwapRouteRequestDto value, $Res Function(SwapRouteRequestDto) then) =
      _$SwapRouteRequestDtoCopyWithImpl<$Res, SwapRouteRequestDto>;
  @useResult
  $Res call(
      {String inputToken,
      String outputToken,
      String amount,
      SwapMatch match,
      SwapSlippage slippage,
      String userAccount,
      bool asLegacyTx});
}

/// @nodoc
class _$SwapRouteRequestDtoCopyWithImpl<$Res, $Val extends SwapRouteRequestDto>
    implements $SwapRouteRequestDtoCopyWith<$Res> {
  _$SwapRouteRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputToken = null,
    Object? outputToken = null,
    Object? amount = null,
    Object? match = null,
    Object? slippage = null,
    Object? userAccount = null,
    Object? asLegacyTx = null,
  }) {
    return _then(_value.copyWith(
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as SwapMatch,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as SwapSlippage,
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as String,
      asLegacyTx: null == asLegacyTx
          ? _value.asLegacyTx
          : asLegacyTx // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwapRouteRequestDtoImplCopyWith<$Res>
    implements $SwapRouteRequestDtoCopyWith<$Res> {
  factory _$$SwapRouteRequestDtoImplCopyWith(_$SwapRouteRequestDtoImpl value,
          $Res Function(_$SwapRouteRequestDtoImpl) then) =
      __$$SwapRouteRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputToken,
      String outputToken,
      String amount,
      SwapMatch match,
      SwapSlippage slippage,
      String userAccount,
      bool asLegacyTx});
}

/// @nodoc
class __$$SwapRouteRequestDtoImplCopyWithImpl<$Res>
    extends _$SwapRouteRequestDtoCopyWithImpl<$Res, _$SwapRouteRequestDtoImpl>
    implements _$$SwapRouteRequestDtoImplCopyWith<$Res> {
  __$$SwapRouteRequestDtoImplCopyWithImpl(_$SwapRouteRequestDtoImpl _value,
      $Res Function(_$SwapRouteRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputToken = null,
    Object? outputToken = null,
    Object? amount = null,
    Object? match = null,
    Object? slippage = null,
    Object? userAccount = null,
    Object? asLegacyTx = null,
  }) {
    return _then(_$SwapRouteRequestDtoImpl(
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as SwapMatch,
      slippage: null == slippage
          ? _value.slippage
          : slippage // ignore: cast_nullable_to_non_nullable
              as SwapSlippage,
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as String,
      asLegacyTx: null == asLegacyTx
          ? _value.asLegacyTx
          : asLegacyTx // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapRouteRequestDtoImpl implements _SwapRouteRequestDto {
  const _$SwapRouteRequestDtoImpl(
      {required this.inputToken,
      required this.outputToken,
      required this.amount,
      required this.match,
      required this.slippage,
      required this.userAccount,
      this.asLegacyTx = true});

  factory _$SwapRouteRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapRouteRequestDtoImplFromJson(json);

  @override
  final String inputToken;
  @override
  final String outputToken;
  @override
  final String amount;
  @override
  final SwapMatch match;
  @override
  final SwapSlippage slippage;
  @override
  final String userAccount;
  @override
  @JsonKey()
  final bool asLegacyTx;

  @override
  String toString() {
    return 'SwapRouteRequestDto(inputToken: $inputToken, outputToken: $outputToken, amount: $amount, match: $match, slippage: $slippage, userAccount: $userAccount, asLegacyTx: $asLegacyTx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapRouteRequestDtoImpl &&
            (identical(other.inputToken, inputToken) ||
                other.inputToken == inputToken) &&
            (identical(other.outputToken, outputToken) ||
                other.outputToken == outputToken) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.slippage, slippage) ||
                other.slippage == slippage) &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.asLegacyTx, asLegacyTx) ||
                other.asLegacyTx == asLegacyTx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inputToken, outputToken, amount,
      match, slippage, userAccount, asLegacyTx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapRouteRequestDtoImplCopyWith<_$SwapRouteRequestDtoImpl> get copyWith =>
      __$$SwapRouteRequestDtoImplCopyWithImpl<_$SwapRouteRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapRouteRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SwapRouteRequestDto implements SwapRouteRequestDto {
  const factory _SwapRouteRequestDto(
      {required final String inputToken,
      required final String outputToken,
      required final String amount,
      required final SwapMatch match,
      required final SwapSlippage slippage,
      required final String userAccount,
      final bool asLegacyTx}) = _$SwapRouteRequestDtoImpl;

  factory _SwapRouteRequestDto.fromJson(Map<String, dynamic> json) =
      _$SwapRouteRequestDtoImpl.fromJson;

  @override
  String get inputToken;
  @override
  String get outputToken;
  @override
  String get amount;
  @override
  SwapMatch get match;
  @override
  SwapSlippage get slippage;
  @override
  String get userAccount;
  @override
  bool get asLegacyTx;
  @override
  @JsonKey(ignore: true)
  _$$SwapRouteRequestDtoImplCopyWith<_$SwapRouteRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwapRouteResponseDto _$SwapRouteResponseDtoFromJson(Map<String, dynamic> json) {
  return _SwapRouteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SwapRouteResponseDto {
  String get inAmount => throw _privateConstructorUsedError;
  String get outAmount => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  int get slippageBps => throw _privateConstructorUsedError;
  int get platformFeeBps => throw _privateConstructorUsedError;
  String get priceImpact => throw _privateConstructorUsedError;
  String get providerLabel => throw _privateConstructorUsedError;
  String get encodedTx => throw _privateConstructorUsedError;
  int get feeInUsdc => throw _privateConstructorUsedError;
  BigInt get slot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwapRouteResponseDtoCopyWith<SwapRouteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapRouteResponseDtoCopyWith<$Res> {
  factory $SwapRouteResponseDtoCopyWith(SwapRouteResponseDto value,
          $Res Function(SwapRouteResponseDto) then) =
      _$SwapRouteResponseDtoCopyWithImpl<$Res, SwapRouteResponseDto>;
  @useResult
  $Res call(
      {String inAmount,
      String outAmount,
      String amount,
      int slippageBps,
      int platformFeeBps,
      String priceImpact,
      String providerLabel,
      String encodedTx,
      int feeInUsdc,
      BigInt slot});
}

/// @nodoc
class _$SwapRouteResponseDtoCopyWithImpl<$Res,
        $Val extends SwapRouteResponseDto>
    implements $SwapRouteResponseDtoCopyWith<$Res> {
  _$SwapRouteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAmount = null,
    Object? outAmount = null,
    Object? amount = null,
    Object? slippageBps = null,
    Object? platformFeeBps = null,
    Object? priceImpact = null,
    Object? providerLabel = null,
    Object? encodedTx = null,
    Object? feeInUsdc = null,
    Object? slot = null,
  }) {
    return _then(_value.copyWith(
      inAmount: null == inAmount
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outAmount: null == outAmount
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      slippageBps: null == slippageBps
          ? _value.slippageBps
          : slippageBps // ignore: cast_nullable_to_non_nullable
              as int,
      platformFeeBps: null == platformFeeBps
          ? _value.platformFeeBps
          : platformFeeBps // ignore: cast_nullable_to_non_nullable
              as int,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as String,
      providerLabel: null == providerLabel
          ? _value.providerLabel
          : providerLabel // ignore: cast_nullable_to_non_nullable
              as String,
      encodedTx: null == encodedTx
          ? _value.encodedTx
          : encodedTx // ignore: cast_nullable_to_non_nullable
              as String,
      feeInUsdc: null == feeInUsdc
          ? _value.feeInUsdc
          : feeInUsdc // ignore: cast_nullable_to_non_nullable
              as int,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwapRouteResponseDtoImplCopyWith<$Res>
    implements $SwapRouteResponseDtoCopyWith<$Res> {
  factory _$$SwapRouteResponseDtoImplCopyWith(_$SwapRouteResponseDtoImpl value,
          $Res Function(_$SwapRouteResponseDtoImpl) then) =
      __$$SwapRouteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inAmount,
      String outAmount,
      String amount,
      int slippageBps,
      int platformFeeBps,
      String priceImpact,
      String providerLabel,
      String encodedTx,
      int feeInUsdc,
      BigInt slot});
}

/// @nodoc
class __$$SwapRouteResponseDtoImplCopyWithImpl<$Res>
    extends _$SwapRouteResponseDtoCopyWithImpl<$Res, _$SwapRouteResponseDtoImpl>
    implements _$$SwapRouteResponseDtoImplCopyWith<$Res> {
  __$$SwapRouteResponseDtoImplCopyWithImpl(_$SwapRouteResponseDtoImpl _value,
      $Res Function(_$SwapRouteResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inAmount = null,
    Object? outAmount = null,
    Object? amount = null,
    Object? slippageBps = null,
    Object? platformFeeBps = null,
    Object? priceImpact = null,
    Object? providerLabel = null,
    Object? encodedTx = null,
    Object? feeInUsdc = null,
    Object? slot = null,
  }) {
    return _then(_$SwapRouteResponseDtoImpl(
      inAmount: null == inAmount
          ? _value.inAmount
          : inAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outAmount: null == outAmount
          ? _value.outAmount
          : outAmount // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      slippageBps: null == slippageBps
          ? _value.slippageBps
          : slippageBps // ignore: cast_nullable_to_non_nullable
              as int,
      platformFeeBps: null == platformFeeBps
          ? _value.platformFeeBps
          : platformFeeBps // ignore: cast_nullable_to_non_nullable
              as int,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as String,
      providerLabel: null == providerLabel
          ? _value.providerLabel
          : providerLabel // ignore: cast_nullable_to_non_nullable
              as String,
      encodedTx: null == encodedTx
          ? _value.encodedTx
          : encodedTx // ignore: cast_nullable_to_non_nullable
              as String,
      feeInUsdc: null == feeInUsdc
          ? _value.feeInUsdc
          : feeInUsdc // ignore: cast_nullable_to_non_nullable
              as int,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapRouteResponseDtoImpl implements _SwapRouteResponseDto {
  const _$SwapRouteResponseDtoImpl(
      {required this.inAmount,
      required this.outAmount,
      required this.amount,
      required this.slippageBps,
      required this.platformFeeBps,
      required this.priceImpact,
      required this.providerLabel,
      required this.encodedTx,
      required this.feeInUsdc,
      required this.slot});

  factory _$SwapRouteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapRouteResponseDtoImplFromJson(json);

  @override
  final String inAmount;
  @override
  final String outAmount;
  @override
  final String amount;
  @override
  final int slippageBps;
  @override
  final int platformFeeBps;
  @override
  final String priceImpact;
  @override
  final String providerLabel;
  @override
  final String encodedTx;
  @override
  final int feeInUsdc;
  @override
  final BigInt slot;

  @override
  String toString() {
    return 'SwapRouteResponseDto(inAmount: $inAmount, outAmount: $outAmount, amount: $amount, slippageBps: $slippageBps, platformFeeBps: $platformFeeBps, priceImpact: $priceImpact, providerLabel: $providerLabel, encodedTx: $encodedTx, feeInUsdc: $feeInUsdc, slot: $slot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapRouteResponseDtoImpl &&
            (identical(other.inAmount, inAmount) ||
                other.inAmount == inAmount) &&
            (identical(other.outAmount, outAmount) ||
                other.outAmount == outAmount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.slippageBps, slippageBps) ||
                other.slippageBps == slippageBps) &&
            (identical(other.platformFeeBps, platformFeeBps) ||
                other.platformFeeBps == platformFeeBps) &&
            (identical(other.priceImpact, priceImpact) ||
                other.priceImpact == priceImpact) &&
            (identical(other.providerLabel, providerLabel) ||
                other.providerLabel == providerLabel) &&
            (identical(other.encodedTx, encodedTx) ||
                other.encodedTx == encodedTx) &&
            (identical(other.feeInUsdc, feeInUsdc) ||
                other.feeInUsdc == feeInUsdc) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      inAmount,
      outAmount,
      amount,
      slippageBps,
      platformFeeBps,
      priceImpact,
      providerLabel,
      encodedTx,
      feeInUsdc,
      slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapRouteResponseDtoImplCopyWith<_$SwapRouteResponseDtoImpl>
      get copyWith =>
          __$$SwapRouteResponseDtoImplCopyWithImpl<_$SwapRouteResponseDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapRouteResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SwapRouteResponseDto implements SwapRouteResponseDto {
  const factory _SwapRouteResponseDto(
      {required final String inAmount,
      required final String outAmount,
      required final String amount,
      required final int slippageBps,
      required final int platformFeeBps,
      required final String priceImpact,
      required final String providerLabel,
      required final String encodedTx,
      required final int feeInUsdc,
      required final BigInt slot}) = _$SwapRouteResponseDtoImpl;

  factory _SwapRouteResponseDto.fromJson(Map<String, dynamic> json) =
      _$SwapRouteResponseDtoImpl.fromJson;

  @override
  String get inAmount;
  @override
  String get outAmount;
  @override
  String get amount;
  @override
  int get slippageBps;
  @override
  int get platformFeeBps;
  @override
  String get priceImpact;
  @override
  String get providerLabel;
  @override
  String get encodedTx;
  @override
  int get feeInUsdc;
  @override
  BigInt get slot;
  @override
  @JsonKey(ignore: true)
  _$$SwapRouteResponseDtoImplCopyWith<_$SwapRouteResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
