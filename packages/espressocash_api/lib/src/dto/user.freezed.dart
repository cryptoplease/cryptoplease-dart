// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletCountryRequestDto _$WalletCountryRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _WalletCountryRequestDto.fromJson(json);
}

/// @nodoc
mixin _$WalletCountryRequestDto {
  String get walletAddress => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCountryRequestDtoCopyWith<WalletCountryRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCountryRequestDtoCopyWith<$Res> {
  factory $WalletCountryRequestDtoCopyWith(WalletCountryRequestDto value,
          $Res Function(WalletCountryRequestDto) then) =
      _$WalletCountryRequestDtoCopyWithImpl<$Res, WalletCountryRequestDto>;
  @useResult
  $Res call({String walletAddress, String countryCode});
}

/// @nodoc
class _$WalletCountryRequestDtoCopyWithImpl<$Res,
        $Val extends WalletCountryRequestDto>
    implements $WalletCountryRequestDtoCopyWith<$Res> {
  _$WalletCountryRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletCountryRequestDtoImplCopyWith<$Res>
    implements $WalletCountryRequestDtoCopyWith<$Res> {
  factory _$$WalletCountryRequestDtoImplCopyWith(
          _$WalletCountryRequestDtoImpl value,
          $Res Function(_$WalletCountryRequestDtoImpl) then) =
      __$$WalletCountryRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String walletAddress, String countryCode});
}

/// @nodoc
class __$$WalletCountryRequestDtoImplCopyWithImpl<$Res>
    extends _$WalletCountryRequestDtoCopyWithImpl<$Res,
        _$WalletCountryRequestDtoImpl>
    implements _$$WalletCountryRequestDtoImplCopyWith<$Res> {
  __$$WalletCountryRequestDtoImplCopyWithImpl(
      _$WalletCountryRequestDtoImpl _value,
      $Res Function(_$WalletCountryRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? countryCode = null,
  }) {
    return _then(_$WalletCountryRequestDtoImpl(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletCountryRequestDtoImpl implements _WalletCountryRequestDto {
  const _$WalletCountryRequestDtoImpl(
      {required this.walletAddress, required this.countryCode});

  factory _$WalletCountryRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCountryRequestDtoImplFromJson(json);

  @override
  final String walletAddress;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'WalletCountryRequestDto(walletAddress: $walletAddress, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCountryRequestDtoImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCountryRequestDtoImplCopyWith<_$WalletCountryRequestDtoImpl>
      get copyWith => __$$WalletCountryRequestDtoImplCopyWithImpl<
          _$WalletCountryRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletCountryRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _WalletCountryRequestDto implements WalletCountryRequestDto {
  const factory _WalletCountryRequestDto(
      {required final String walletAddress,
      required final String countryCode}) = _$WalletCountryRequestDtoImpl;

  factory _WalletCountryRequestDto.fromJson(Map<String, dynamic> json) =
      _$WalletCountryRequestDtoImpl.fromJson;

  @override
  String get walletAddress;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$WalletCountryRequestDtoImplCopyWith<_$WalletCountryRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}