// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriorityFeesRequestDto _$PriorityFeesRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _PriorityFeesRequestDto.fromJson(json);
}

/// @nodoc
mixin _$PriorityFeesRequestDto {
  String get encodedTx => throw _privateConstructorUsedError;

  /// Serializes this PriorityFeesRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityFeesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityFeesRequestDtoCopyWith<PriorityFeesRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityFeesRequestDtoCopyWith<$Res> {
  factory $PriorityFeesRequestDtoCopyWith(PriorityFeesRequestDto value,
          $Res Function(PriorityFeesRequestDto) then) =
      _$PriorityFeesRequestDtoCopyWithImpl<$Res, PriorityFeesRequestDto>;
  @useResult
  $Res call({String encodedTx});
}

/// @nodoc
class _$PriorityFeesRequestDtoCopyWithImpl<$Res,
        $Val extends PriorityFeesRequestDto>
    implements $PriorityFeesRequestDtoCopyWith<$Res> {
  _$PriorityFeesRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityFeesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedTx = null,
  }) {
    return _then(_value.copyWith(
      encodedTx: null == encodedTx
          ? _value.encodedTx
          : encodedTx // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityFeesRequestDtoImplCopyWith<$Res>
    implements $PriorityFeesRequestDtoCopyWith<$Res> {
  factory _$$PriorityFeesRequestDtoImplCopyWith(
          _$PriorityFeesRequestDtoImpl value,
          $Res Function(_$PriorityFeesRequestDtoImpl) then) =
      __$$PriorityFeesRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String encodedTx});
}

/// @nodoc
class __$$PriorityFeesRequestDtoImplCopyWithImpl<$Res>
    extends _$PriorityFeesRequestDtoCopyWithImpl<$Res,
        _$PriorityFeesRequestDtoImpl>
    implements _$$PriorityFeesRequestDtoImplCopyWith<$Res> {
  __$$PriorityFeesRequestDtoImplCopyWithImpl(
      _$PriorityFeesRequestDtoImpl _value,
      $Res Function(_$PriorityFeesRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityFeesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedTx = null,
  }) {
    return _then(_$PriorityFeesRequestDtoImpl(
      encodedTx: null == encodedTx
          ? _value.encodedTx
          : encodedTx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriorityFeesRequestDtoImpl implements _PriorityFeesRequestDto {
  const _$PriorityFeesRequestDtoImpl({required this.encodedTx});

  factory _$PriorityFeesRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityFeesRequestDtoImplFromJson(json);

  @override
  final String encodedTx;

  @override
  String toString() {
    return 'PriorityFeesRequestDto(encodedTx: $encodedTx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityFeesRequestDtoImpl &&
            (identical(other.encodedTx, encodedTx) ||
                other.encodedTx == encodedTx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, encodedTx);

  /// Create a copy of PriorityFeesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityFeesRequestDtoImplCopyWith<_$PriorityFeesRequestDtoImpl>
      get copyWith => __$$PriorityFeesRequestDtoImplCopyWithImpl<
          _$PriorityFeesRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityFeesRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _PriorityFeesRequestDto implements PriorityFeesRequestDto {
  const factory _PriorityFeesRequestDto({required final String encodedTx}) =
      _$PriorityFeesRequestDtoImpl;

  factory _PriorityFeesRequestDto.fromJson(Map<String, dynamic> json) =
      _$PriorityFeesRequestDtoImpl.fromJson;

  @override
  String get encodedTx;

  /// Create a copy of PriorityFeesRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityFeesRequestDtoImplCopyWith<_$PriorityFeesRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PriorityFeesResponseDto _$PriorityFeesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _PriorityFeesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PriorityFeesResponseDto {
  int? get none => throw _privateConstructorUsedError;
  int? get low => throw _privateConstructorUsedError;
  int? get medium => throw _privateConstructorUsedError;
  int? get high => throw _privateConstructorUsedError;
  int? get veryHigh => throw _privateConstructorUsedError;
  int? get unsafeMax => throw _privateConstructorUsedError;

  /// Serializes this PriorityFeesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriorityFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityFeesResponseDtoCopyWith<PriorityFeesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityFeesResponseDtoCopyWith<$Res> {
  factory $PriorityFeesResponseDtoCopyWith(PriorityFeesResponseDto value,
          $Res Function(PriorityFeesResponseDto) then) =
      _$PriorityFeesResponseDtoCopyWithImpl<$Res, PriorityFeesResponseDto>;
  @useResult
  $Res call(
      {int? none,
      int? low,
      int? medium,
      int? high,
      int? veryHigh,
      int? unsafeMax});
}

/// @nodoc
class _$PriorityFeesResponseDtoCopyWithImpl<$Res,
        $Val extends PriorityFeesResponseDto>
    implements $PriorityFeesResponseDtoCopyWith<$Res> {
  _$PriorityFeesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? none = freezed,
    Object? low = freezed,
    Object? medium = freezed,
    Object? high = freezed,
    Object? veryHigh = freezed,
    Object? unsafeMax = freezed,
  }) {
    return _then(_value.copyWith(
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as int?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as int?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as int?,
      veryHigh: freezed == veryHigh
          ? _value.veryHigh
          : veryHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      unsafeMax: freezed == unsafeMax
          ? _value.unsafeMax
          : unsafeMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityFeesResponseDtoImplCopyWith<$Res>
    implements $PriorityFeesResponseDtoCopyWith<$Res> {
  factory _$$PriorityFeesResponseDtoImplCopyWith(
          _$PriorityFeesResponseDtoImpl value,
          $Res Function(_$PriorityFeesResponseDtoImpl) then) =
      __$$PriorityFeesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? none,
      int? low,
      int? medium,
      int? high,
      int? veryHigh,
      int? unsafeMax});
}

/// @nodoc
class __$$PriorityFeesResponseDtoImplCopyWithImpl<$Res>
    extends _$PriorityFeesResponseDtoCopyWithImpl<$Res,
        _$PriorityFeesResponseDtoImpl>
    implements _$$PriorityFeesResponseDtoImplCopyWith<$Res> {
  __$$PriorityFeesResponseDtoImplCopyWithImpl(
      _$PriorityFeesResponseDtoImpl _value,
      $Res Function(_$PriorityFeesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? none = freezed,
    Object? low = freezed,
    Object? medium = freezed,
    Object? high = freezed,
    Object? veryHigh = freezed,
    Object? unsafeMax = freezed,
  }) {
    return _then(_$PriorityFeesResponseDtoImpl(
      none: freezed == none
          ? _value.none
          : none // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as int?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as int?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as int?,
      veryHigh: freezed == veryHigh
          ? _value.veryHigh
          : veryHigh // ignore: cast_nullable_to_non_nullable
              as int?,
      unsafeMax: freezed == unsafeMax
          ? _value.unsafeMax
          : unsafeMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriorityFeesResponseDtoImpl implements _PriorityFeesResponseDto {
  const _$PriorityFeesResponseDtoImpl(
      {this.none,
      this.low,
      this.medium,
      this.high,
      this.veryHigh,
      this.unsafeMax});

  factory _$PriorityFeesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriorityFeesResponseDtoImplFromJson(json);

  @override
  final int? none;
  @override
  final int? low;
  @override
  final int? medium;
  @override
  final int? high;
  @override
  final int? veryHigh;
  @override
  final int? unsafeMax;

  @override
  String toString() {
    return 'PriorityFeesResponseDto(none: $none, low: $low, medium: $medium, high: $high, veryHigh: $veryHigh, unsafeMax: $unsafeMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityFeesResponseDtoImpl &&
            (identical(other.none, none) || other.none == none) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.veryHigh, veryHigh) ||
                other.veryHigh == veryHigh) &&
            (identical(other.unsafeMax, unsafeMax) ||
                other.unsafeMax == unsafeMax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, none, low, medium, high, veryHigh, unsafeMax);

  /// Create a copy of PriorityFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityFeesResponseDtoImplCopyWith<_$PriorityFeesResponseDtoImpl>
      get copyWith => __$$PriorityFeesResponseDtoImplCopyWithImpl<
          _$PriorityFeesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriorityFeesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PriorityFeesResponseDto implements PriorityFeesResponseDto {
  const factory _PriorityFeesResponseDto(
      {final int? none,
      final int? low,
      final int? medium,
      final int? high,
      final int? veryHigh,
      final int? unsafeMax}) = _$PriorityFeesResponseDtoImpl;

  factory _PriorityFeesResponseDto.fromJson(Map<String, dynamic> json) =
      _$PriorityFeesResponseDtoImpl.fromJson;

  @override
  int? get none;
  @override
  int? get low;
  @override
  int? get medium;
  @override
  int? get high;
  @override
  int? get veryHigh;
  @override
  int? get unsafeMax;

  /// Create a copy of PriorityFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityFeesResponseDtoImplCopyWith<_$PriorityFeesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
