// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTokensMetaResponseDto _$GetTokensMetaResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetTokensMetaResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetTokensMetaResponseDto {
  String get md5 => throw _privateConstructorUsedError;

  /// Serializes this GetTokensMetaResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTokensMetaResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTokensMetaResponseDtoCopyWith<GetTokensMetaResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTokensMetaResponseDtoCopyWith<$Res> {
  factory $GetTokensMetaResponseDtoCopyWith(GetTokensMetaResponseDto value,
          $Res Function(GetTokensMetaResponseDto) then) =
      _$GetTokensMetaResponseDtoCopyWithImpl<$Res, GetTokensMetaResponseDto>;
  @useResult
  $Res call({String md5});
}

/// @nodoc
class _$GetTokensMetaResponseDtoCopyWithImpl<$Res,
        $Val extends GetTokensMetaResponseDto>
    implements $GetTokensMetaResponseDtoCopyWith<$Res> {
  _$GetTokensMetaResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTokensMetaResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? md5 = null,
  }) {
    return _then(_value.copyWith(
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTokensMetaResponseDtoImplCopyWith<$Res>
    implements $GetTokensMetaResponseDtoCopyWith<$Res> {
  factory _$$GetTokensMetaResponseDtoImplCopyWith(
          _$GetTokensMetaResponseDtoImpl value,
          $Res Function(_$GetTokensMetaResponseDtoImpl) then) =
      __$$GetTokensMetaResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String md5});
}

/// @nodoc
class __$$GetTokensMetaResponseDtoImplCopyWithImpl<$Res>
    extends _$GetTokensMetaResponseDtoCopyWithImpl<$Res,
        _$GetTokensMetaResponseDtoImpl>
    implements _$$GetTokensMetaResponseDtoImplCopyWith<$Res> {
  __$$GetTokensMetaResponseDtoImplCopyWithImpl(
      _$GetTokensMetaResponseDtoImpl _value,
      $Res Function(_$GetTokensMetaResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTokensMetaResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? md5 = null,
  }) {
    return _then(_$GetTokensMetaResponseDtoImpl(
      md5: null == md5
          ? _value.md5
          : md5 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTokensMetaResponseDtoImpl implements _GetTokensMetaResponseDto {
  const _$GetTokensMetaResponseDtoImpl({required this.md5});

  factory _$GetTokensMetaResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTokensMetaResponseDtoImplFromJson(json);

  @override
  final String md5;

  @override
  String toString() {
    return 'GetTokensMetaResponseDto(md5: $md5)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTokensMetaResponseDtoImpl &&
            (identical(other.md5, md5) || other.md5 == md5));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, md5);

  /// Create a copy of GetTokensMetaResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTokensMetaResponseDtoImplCopyWith<_$GetTokensMetaResponseDtoImpl>
      get copyWith => __$$GetTokensMetaResponseDtoImplCopyWithImpl<
          _$GetTokensMetaResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTokensMetaResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetTokensMetaResponseDto implements GetTokensMetaResponseDto {
  const factory _GetTokensMetaResponseDto({required final String md5}) =
      _$GetTokensMetaResponseDtoImpl;

  factory _GetTokensMetaResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetTokensMetaResponseDtoImpl.fromJson;

  @override
  String get md5;

  /// Create a copy of GetTokensMetaResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTokensMetaResponseDtoImplCopyWith<_$GetTokensMetaResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
