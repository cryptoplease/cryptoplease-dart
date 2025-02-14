// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'durable_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFreeNonceResponseDto _$GetFreeNonceResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetFreeNonceResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetFreeNonceResponseDto {
  String get nonce => throw _privateConstructorUsedError;
  String get nonceAccount => throw _privateConstructorUsedError;
  String get authority => throw _privateConstructorUsedError;

  /// Serializes this GetFreeNonceResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFreeNonceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFreeNonceResponseDtoCopyWith<GetFreeNonceResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFreeNonceResponseDtoCopyWith<$Res> {
  factory $GetFreeNonceResponseDtoCopyWith(GetFreeNonceResponseDto value,
          $Res Function(GetFreeNonceResponseDto) then) =
      _$GetFreeNonceResponseDtoCopyWithImpl<$Res, GetFreeNonceResponseDto>;
  @useResult
  $Res call({String nonce, String nonceAccount, String authority});
}

/// @nodoc
class _$GetFreeNonceResponseDtoCopyWithImpl<$Res,
        $Val extends GetFreeNonceResponseDto>
    implements $GetFreeNonceResponseDtoCopyWith<$Res> {
  _$GetFreeNonceResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFreeNonceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = null,
    Object? nonceAccount = null,
    Object? authority = null,
  }) {
    return _then(_value.copyWith(
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      nonceAccount: null == nonceAccount
          ? _value.nonceAccount
          : nonceAccount // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFreeNonceResponseDtoImplCopyWith<$Res>
    implements $GetFreeNonceResponseDtoCopyWith<$Res> {
  factory _$$GetFreeNonceResponseDtoImplCopyWith(
          _$GetFreeNonceResponseDtoImpl value,
          $Res Function(_$GetFreeNonceResponseDtoImpl) then) =
      __$$GetFreeNonceResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nonce, String nonceAccount, String authority});
}

/// @nodoc
class __$$GetFreeNonceResponseDtoImplCopyWithImpl<$Res>
    extends _$GetFreeNonceResponseDtoCopyWithImpl<$Res,
        _$GetFreeNonceResponseDtoImpl>
    implements _$$GetFreeNonceResponseDtoImplCopyWith<$Res> {
  __$$GetFreeNonceResponseDtoImplCopyWithImpl(
      _$GetFreeNonceResponseDtoImpl _value,
      $Res Function(_$GetFreeNonceResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFreeNonceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = null,
    Object? nonceAccount = null,
    Object? authority = null,
  }) {
    return _then(_$GetFreeNonceResponseDtoImpl(
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      nonceAccount: null == nonceAccount
          ? _value.nonceAccount
          : nonceAccount // ignore: cast_nullable_to_non_nullable
              as String,
      authority: null == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFreeNonceResponseDtoImpl implements _GetFreeNonceResponseDto {
  const _$GetFreeNonceResponseDtoImpl(
      {required this.nonce,
      required this.nonceAccount,
      required this.authority});

  factory _$GetFreeNonceResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFreeNonceResponseDtoImplFromJson(json);

  @override
  final String nonce;
  @override
  final String nonceAccount;
  @override
  final String authority;

  @override
  String toString() {
    return 'GetFreeNonceResponseDto(nonce: $nonce, nonceAccount: $nonceAccount, authority: $authority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeNonceResponseDtoImpl &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.nonceAccount, nonceAccount) ||
                other.nonceAccount == nonceAccount) &&
            (identical(other.authority, authority) ||
                other.authority == authority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nonce, nonceAccount, authority);

  /// Create a copy of GetFreeNonceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeNonceResponseDtoImplCopyWith<_$GetFreeNonceResponseDtoImpl>
      get copyWith => __$$GetFreeNonceResponseDtoImplCopyWithImpl<
          _$GetFreeNonceResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFreeNonceResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetFreeNonceResponseDto implements GetFreeNonceResponseDto {
  const factory _GetFreeNonceResponseDto(
      {required final String nonce,
      required final String nonceAccount,
      required final String authority}) = _$GetFreeNonceResponseDtoImpl;

  factory _GetFreeNonceResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetFreeNonceResponseDtoImpl.fromJson;

  @override
  String get nonce;
  @override
  String get nonceAccount;
  @override
  String get authority;

  /// Create a copy of GetFreeNonceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFreeNonceResponseDtoImplCopyWith<_$GetFreeNonceResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmitDurableTxRequestDto _$SubmitDurableTxRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _SubmitDurableTxRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SubmitDurableTxRequestDto {
  String get tx => throw _privateConstructorUsedError;

  /// Serializes this SubmitDurableTxRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitDurableTxRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitDurableTxRequestDtoCopyWith<SubmitDurableTxRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDurableTxRequestDtoCopyWith<$Res> {
  factory $SubmitDurableTxRequestDtoCopyWith(SubmitDurableTxRequestDto value,
          $Res Function(SubmitDurableTxRequestDto) then) =
      _$SubmitDurableTxRequestDtoCopyWithImpl<$Res, SubmitDurableTxRequestDto>;
  @useResult
  $Res call({String tx});
}

/// @nodoc
class _$SubmitDurableTxRequestDtoCopyWithImpl<$Res,
        $Val extends SubmitDurableTxRequestDto>
    implements $SubmitDurableTxRequestDtoCopyWith<$Res> {
  _$SubmitDurableTxRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDurableTxRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
  }) {
    return _then(_value.copyWith(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitDurableTxRequestDtoImplCopyWith<$Res>
    implements $SubmitDurableTxRequestDtoCopyWith<$Res> {
  factory _$$SubmitDurableTxRequestDtoImplCopyWith(
          _$SubmitDurableTxRequestDtoImpl value,
          $Res Function(_$SubmitDurableTxRequestDtoImpl) then) =
      __$$SubmitDurableTxRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tx});
}

/// @nodoc
class __$$SubmitDurableTxRequestDtoImplCopyWithImpl<$Res>
    extends _$SubmitDurableTxRequestDtoCopyWithImpl<$Res,
        _$SubmitDurableTxRequestDtoImpl>
    implements _$$SubmitDurableTxRequestDtoImplCopyWith<$Res> {
  __$$SubmitDurableTxRequestDtoImplCopyWithImpl(
      _$SubmitDurableTxRequestDtoImpl _value,
      $Res Function(_$SubmitDurableTxRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitDurableTxRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tx = null,
  }) {
    return _then(_$SubmitDurableTxRequestDtoImpl(
      tx: null == tx
          ? _value.tx
          : tx // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitDurableTxRequestDtoImpl implements _SubmitDurableTxRequestDto {
  const _$SubmitDurableTxRequestDtoImpl({required this.tx});

  factory _$SubmitDurableTxRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitDurableTxRequestDtoImplFromJson(json);

  @override
  final String tx;

  @override
  String toString() {
    return 'SubmitDurableTxRequestDto(tx: $tx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDurableTxRequestDtoImpl &&
            (identical(other.tx, tx) || other.tx == tx));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tx);

  /// Create a copy of SubmitDurableTxRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitDurableTxRequestDtoImplCopyWith<_$SubmitDurableTxRequestDtoImpl>
      get copyWith => __$$SubmitDurableTxRequestDtoImplCopyWithImpl<
          _$SubmitDurableTxRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitDurableTxRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SubmitDurableTxRequestDto implements SubmitDurableTxRequestDto {
  const factory _SubmitDurableTxRequestDto({required final String tx}) =
      _$SubmitDurableTxRequestDtoImpl;

  factory _SubmitDurableTxRequestDto.fromJson(Map<String, dynamic> json) =
      _$SubmitDurableTxRequestDtoImpl.fromJson;

  @override
  String get tx;

  /// Create a copy of SubmitDurableTxRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitDurableTxRequestDtoImplCopyWith<_$SubmitDurableTxRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmitDurableTxResponseDto _$SubmitDurableTxResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _SubmitDurableTxResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SubmitDurableTxResponseDto {
  String get signature => throw _privateConstructorUsedError;

  /// Serializes this SubmitDurableTxResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitDurableTxResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitDurableTxResponseDtoCopyWith<SubmitDurableTxResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDurableTxResponseDtoCopyWith<$Res> {
  factory $SubmitDurableTxResponseDtoCopyWith(SubmitDurableTxResponseDto value,
          $Res Function(SubmitDurableTxResponseDto) then) =
      _$SubmitDurableTxResponseDtoCopyWithImpl<$Res,
          SubmitDurableTxResponseDto>;
  @useResult
  $Res call({String signature});
}

/// @nodoc
class _$SubmitDurableTxResponseDtoCopyWithImpl<$Res,
        $Val extends SubmitDurableTxResponseDto>
    implements $SubmitDurableTxResponseDtoCopyWith<$Res> {
  _$SubmitDurableTxResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDurableTxResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitDurableTxResponseDtoImplCopyWith<$Res>
    implements $SubmitDurableTxResponseDtoCopyWith<$Res> {
  factory _$$SubmitDurableTxResponseDtoImplCopyWith(
          _$SubmitDurableTxResponseDtoImpl value,
          $Res Function(_$SubmitDurableTxResponseDtoImpl) then) =
      __$$SubmitDurableTxResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String signature});
}

/// @nodoc
class __$$SubmitDurableTxResponseDtoImplCopyWithImpl<$Res>
    extends _$SubmitDurableTxResponseDtoCopyWithImpl<$Res,
        _$SubmitDurableTxResponseDtoImpl>
    implements _$$SubmitDurableTxResponseDtoImplCopyWith<$Res> {
  __$$SubmitDurableTxResponseDtoImplCopyWithImpl(
      _$SubmitDurableTxResponseDtoImpl _value,
      $Res Function(_$SubmitDurableTxResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitDurableTxResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signature = null,
  }) {
    return _then(_$SubmitDurableTxResponseDtoImpl(
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitDurableTxResponseDtoImpl implements _SubmitDurableTxResponseDto {
  const _$SubmitDurableTxResponseDtoImpl({required this.signature});

  factory _$SubmitDurableTxResponseDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubmitDurableTxResponseDtoImplFromJson(json);

  @override
  final String signature;

  @override
  String toString() {
    return 'SubmitDurableTxResponseDto(signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDurableTxResponseDtoImpl &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, signature);

  /// Create a copy of SubmitDurableTxResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitDurableTxResponseDtoImplCopyWith<_$SubmitDurableTxResponseDtoImpl>
      get copyWith => __$$SubmitDurableTxResponseDtoImplCopyWithImpl<
          _$SubmitDurableTxResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitDurableTxResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SubmitDurableTxResponseDto
    implements SubmitDurableTxResponseDto {
  const factory _SubmitDurableTxResponseDto({required final String signature}) =
      _$SubmitDurableTxResponseDtoImpl;

  factory _SubmitDurableTxResponseDto.fromJson(Map<String, dynamic> json) =
      _$SubmitDurableTxResponseDtoImpl.fromJson;

  @override
  String get signature;

  /// Create a copy of SubmitDurableTxResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitDurableTxResponseDtoImplCopyWith<_$SubmitDurableTxResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDurableFeesResponseDto _$GetDurableFeesResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetDurableFeesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetDurableFeesResponseDto {
  int get outgoingLink => throw _privateConstructorUsedError;
  int get incomingLink => throw _privateConstructorUsedError;
  int get cancelLink => throw _privateConstructorUsedError;

  /// Serializes this GetDurableFeesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDurableFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDurableFeesResponseDtoCopyWith<GetDurableFeesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDurableFeesResponseDtoCopyWith<$Res> {
  factory $GetDurableFeesResponseDtoCopyWith(GetDurableFeesResponseDto value,
          $Res Function(GetDurableFeesResponseDto) then) =
      _$GetDurableFeesResponseDtoCopyWithImpl<$Res, GetDurableFeesResponseDto>;
  @useResult
  $Res call({int outgoingLink, int incomingLink, int cancelLink});
}

/// @nodoc
class _$GetDurableFeesResponseDtoCopyWithImpl<$Res,
        $Val extends GetDurableFeesResponseDto>
    implements $GetDurableFeesResponseDtoCopyWith<$Res> {
  _$GetDurableFeesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDurableFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outgoingLink = null,
    Object? incomingLink = null,
    Object? cancelLink = null,
  }) {
    return _then(_value.copyWith(
      outgoingLink: null == outgoingLink
          ? _value.outgoingLink
          : outgoingLink // ignore: cast_nullable_to_non_nullable
              as int,
      incomingLink: null == incomingLink
          ? _value.incomingLink
          : incomingLink // ignore: cast_nullable_to_non_nullable
              as int,
      cancelLink: null == cancelLink
          ? _value.cancelLink
          : cancelLink // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDurableFeesResponseDtoImplCopyWith<$Res>
    implements $GetDurableFeesResponseDtoCopyWith<$Res> {
  factory _$$GetDurableFeesResponseDtoImplCopyWith(
          _$GetDurableFeesResponseDtoImpl value,
          $Res Function(_$GetDurableFeesResponseDtoImpl) then) =
      __$$GetDurableFeesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int outgoingLink, int incomingLink, int cancelLink});
}

/// @nodoc
class __$$GetDurableFeesResponseDtoImplCopyWithImpl<$Res>
    extends _$GetDurableFeesResponseDtoCopyWithImpl<$Res,
        _$GetDurableFeesResponseDtoImpl>
    implements _$$GetDurableFeesResponseDtoImplCopyWith<$Res> {
  __$$GetDurableFeesResponseDtoImplCopyWithImpl(
      _$GetDurableFeesResponseDtoImpl _value,
      $Res Function(_$GetDurableFeesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDurableFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outgoingLink = null,
    Object? incomingLink = null,
    Object? cancelLink = null,
  }) {
    return _then(_$GetDurableFeesResponseDtoImpl(
      outgoingLink: null == outgoingLink
          ? _value.outgoingLink
          : outgoingLink // ignore: cast_nullable_to_non_nullable
              as int,
      incomingLink: null == incomingLink
          ? _value.incomingLink
          : incomingLink // ignore: cast_nullable_to_non_nullable
              as int,
      cancelLink: null == cancelLink
          ? _value.cancelLink
          : cancelLink // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDurableFeesResponseDtoImpl implements _GetDurableFeesResponseDto {
  const _$GetDurableFeesResponseDtoImpl(
      {required this.outgoingLink,
      required this.incomingLink,
      required this.cancelLink});

  factory _$GetDurableFeesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDurableFeesResponseDtoImplFromJson(json);

  @override
  final int outgoingLink;
  @override
  final int incomingLink;
  @override
  final int cancelLink;

  @override
  String toString() {
    return 'GetDurableFeesResponseDto(outgoingLink: $outgoingLink, incomingLink: $incomingLink, cancelLink: $cancelLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDurableFeesResponseDtoImpl &&
            (identical(other.outgoingLink, outgoingLink) ||
                other.outgoingLink == outgoingLink) &&
            (identical(other.incomingLink, incomingLink) ||
                other.incomingLink == incomingLink) &&
            (identical(other.cancelLink, cancelLink) ||
                other.cancelLink == cancelLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, outgoingLink, incomingLink, cancelLink);

  /// Create a copy of GetDurableFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDurableFeesResponseDtoImplCopyWith<_$GetDurableFeesResponseDtoImpl>
      get copyWith => __$$GetDurableFeesResponseDtoImplCopyWithImpl<
          _$GetDurableFeesResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDurableFeesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetDurableFeesResponseDto implements GetDurableFeesResponseDto {
  const factory _GetDurableFeesResponseDto(
      {required final int outgoingLink,
      required final int incomingLink,
      required final int cancelLink}) = _$GetDurableFeesResponseDtoImpl;

  factory _GetDurableFeesResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetDurableFeesResponseDtoImpl.fromJson;

  @override
  int get outgoingLink;
  @override
  int get incomingLink;
  @override
  int get cancelLink;

  /// Create a copy of GetDurableFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDurableFeesResponseDtoImplCopyWith<_$GetDurableFeesResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
