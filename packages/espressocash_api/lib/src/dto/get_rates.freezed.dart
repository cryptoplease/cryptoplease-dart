// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_rates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRatesResponseDto _$GetRatesResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetRatesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetRatesResponseDto {
  double get usdc => throw _privateConstructorUsedError;

  /// Serializes this GetRatesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRatesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRatesResponseDtoCopyWith<GetRatesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRatesResponseDtoCopyWith<$Res> {
  factory $GetRatesResponseDtoCopyWith(
          GetRatesResponseDto value, $Res Function(GetRatesResponseDto) then) =
      _$GetRatesResponseDtoCopyWithImpl<$Res, GetRatesResponseDto>;
  @useResult
  $Res call({double usdc});
}

/// @nodoc
class _$GetRatesResponseDtoCopyWithImpl<$Res, $Val extends GetRatesResponseDto>
    implements $GetRatesResponseDtoCopyWith<$Res> {
  _$GetRatesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRatesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usdc = null,
  }) {
    return _then(_value.copyWith(
      usdc: null == usdc
          ? _value.usdc
          : usdc // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRatesResponseDtoImplCopyWith<$Res>
    implements $GetRatesResponseDtoCopyWith<$Res> {
  factory _$$GetRatesResponseDtoImplCopyWith(_$GetRatesResponseDtoImpl value,
          $Res Function(_$GetRatesResponseDtoImpl) then) =
      __$$GetRatesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double usdc});
}

/// @nodoc
class __$$GetRatesResponseDtoImplCopyWithImpl<$Res>
    extends _$GetRatesResponseDtoCopyWithImpl<$Res, _$GetRatesResponseDtoImpl>
    implements _$$GetRatesResponseDtoImplCopyWith<$Res> {
  __$$GetRatesResponseDtoImplCopyWithImpl(_$GetRatesResponseDtoImpl _value,
      $Res Function(_$GetRatesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRatesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usdc = null,
  }) {
    return _then(_$GetRatesResponseDtoImpl(
      usdc: null == usdc
          ? _value.usdc
          : usdc // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRatesResponseDtoImpl implements _GetRatesResponseDto {
  const _$GetRatesResponseDtoImpl({required this.usdc});

  factory _$GetRatesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRatesResponseDtoImplFromJson(json);

  @override
  final double usdc;

  @override
  String toString() {
    return 'GetRatesResponseDto(usdc: $usdc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRatesResponseDtoImpl &&
            (identical(other.usdc, usdc) || other.usdc == usdc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, usdc);

  /// Create a copy of GetRatesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRatesResponseDtoImplCopyWith<_$GetRatesResponseDtoImpl> get copyWith =>
      __$$GetRatesResponseDtoImplCopyWithImpl<_$GetRatesResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRatesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetRatesResponseDto implements GetRatesResponseDto {
  const factory _GetRatesResponseDto({required final double usdc}) =
      _$GetRatesResponseDtoImpl;

  factory _GetRatesResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetRatesResponseDtoImpl.fromJson;

  @override
  double get usdc;

  /// Create a copy of GetRatesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRatesResponseDtoImplCopyWith<_$GetRatesResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
