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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletCountryRequestDto _$WalletCountryRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _WalletCountryRequestDto.fromJson(json);
}

/// @nodoc
mixin _$WalletCountryRequestDto {
  String get countryCode => throw _privateConstructorUsedError;

  /// Serializes this WalletCountryRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletCountryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletCountryRequestDtoCopyWith<WalletCountryRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCountryRequestDtoCopyWith<$Res> {
  factory $WalletCountryRequestDtoCopyWith(WalletCountryRequestDto value,
          $Res Function(WalletCountryRequestDto) then) =
      _$WalletCountryRequestDtoCopyWithImpl<$Res, WalletCountryRequestDto>;
  @useResult
  $Res call({String countryCode});
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

  /// Create a copy of WalletCountryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String countryCode});
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

  /// Create a copy of WalletCountryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
  }) {
    return _then(_$WalletCountryRequestDtoImpl(
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
  const _$WalletCountryRequestDtoImpl({required this.countryCode});

  factory _$WalletCountryRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletCountryRequestDtoImplFromJson(json);

  @override
  final String countryCode;

  @override
  String toString() {
    return 'WalletCountryRequestDto(countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCountryRequestDtoImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode);

  /// Create a copy of WalletCountryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _WalletCountryRequestDto({required final String countryCode}) =
      _$WalletCountryRequestDtoImpl;

  factory _WalletCountryRequestDto.fromJson(Map<String, dynamic> json) =
      _$WalletCountryRequestDtoImpl.fromJson;

  @override
  String get countryCode;

  /// Create a copy of WalletCountryRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletCountryRequestDtoImplCopyWith<_$WalletCountryRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
