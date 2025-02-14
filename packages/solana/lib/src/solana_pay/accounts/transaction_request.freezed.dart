// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionRequestInfo _$TransactionRequestInfoFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestInfo.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestInfo {
  String get label => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this TransactionRequestInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionRequestInfoCopyWith<TransactionRequestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestInfoCopyWith<$Res> {
  factory $TransactionRequestInfoCopyWith(TransactionRequestInfo value,
          $Res Function(TransactionRequestInfo) then) =
      _$TransactionRequestInfoCopyWithImpl<$Res, TransactionRequestInfo>;
  @useResult
  $Res call({String label, String icon});
}

/// @nodoc
class _$TransactionRequestInfoCopyWithImpl<$Res,
        $Val extends TransactionRequestInfo>
    implements $TransactionRequestInfoCopyWith<$Res> {
  _$TransactionRequestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionRequestInfoImplCopyWith<$Res>
    implements $TransactionRequestInfoCopyWith<$Res> {
  factory _$$TransactionRequestInfoImplCopyWith(
          _$TransactionRequestInfoImpl value,
          $Res Function(_$TransactionRequestInfoImpl) then) =
      __$$TransactionRequestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String icon});
}

/// @nodoc
class __$$TransactionRequestInfoImplCopyWithImpl<$Res>
    extends _$TransactionRequestInfoCopyWithImpl<$Res,
        _$TransactionRequestInfoImpl>
    implements _$$TransactionRequestInfoImplCopyWith<$Res> {
  __$$TransactionRequestInfoImplCopyWithImpl(
      _$TransactionRequestInfoImpl _value,
      $Res Function(_$TransactionRequestInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? icon = null,
  }) {
    return _then(_$TransactionRequestInfoImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionRequestInfoImpl implements _TransactionRequestInfo {
  const _$TransactionRequestInfoImpl({required this.label, required this.icon});

  factory _$TransactionRequestInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionRequestInfoImplFromJson(json);

  @override
  final String label;
  @override
  final String icon;

  @override
  String toString() {
    return 'TransactionRequestInfo(label: $label, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionRequestInfoImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, icon);

  /// Create a copy of TransactionRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRequestInfoImplCopyWith<_$TransactionRequestInfoImpl>
      get copyWith => __$$TransactionRequestInfoImplCopyWithImpl<
          _$TransactionRequestInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionRequestInfoImplToJson(
      this,
    );
  }
}

abstract class _TransactionRequestInfo implements TransactionRequestInfo {
  const factory _TransactionRequestInfo(
      {required final String label,
      required final String icon}) = _$TransactionRequestInfoImpl;

  factory _TransactionRequestInfo.fromJson(Map<String, dynamic> json) =
      _$TransactionRequestInfoImpl.fromJson;

  @override
  String get label;
  @override
  String get icon;

  /// Create a copy of TransactionRequestInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionRequestInfoImplCopyWith<_$TransactionRequestInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionRequestResponse _$TransactionRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestResponse {
  String get transaction => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get redirect => throw _privateConstructorUsedError;

  /// Serializes this TransactionRequestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionRequestResponseCopyWith<TransactionRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestResponseCopyWith<$Res> {
  factory $TransactionRequestResponseCopyWith(TransactionRequestResponse value,
          $Res Function(TransactionRequestResponse) then) =
      _$TransactionRequestResponseCopyWithImpl<$Res,
          TransactionRequestResponse>;
  @useResult
  $Res call({String transaction, String? message, String? redirect});
}

/// @nodoc
class _$TransactionRequestResponseCopyWithImpl<$Res,
        $Val extends TransactionRequestResponse>
    implements $TransactionRequestResponseCopyWith<$Res> {
  _$TransactionRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? message = freezed,
    Object? redirect = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionRequestResponseImplCopyWith<$Res>
    implements $TransactionRequestResponseCopyWith<$Res> {
  factory _$$TransactionRequestResponseImplCopyWith(
          _$TransactionRequestResponseImpl value,
          $Res Function(_$TransactionRequestResponseImpl) then) =
      __$$TransactionRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transaction, String? message, String? redirect});
}

/// @nodoc
class __$$TransactionRequestResponseImplCopyWithImpl<$Res>
    extends _$TransactionRequestResponseCopyWithImpl<$Res,
        _$TransactionRequestResponseImpl>
    implements _$$TransactionRequestResponseImplCopyWith<$Res> {
  __$$TransactionRequestResponseImplCopyWithImpl(
      _$TransactionRequestResponseImpl _value,
      $Res Function(_$TransactionRequestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? message = freezed,
    Object? redirect = freezed,
  }) {
    return _then(_$TransactionRequestResponseImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      redirect: freezed == redirect
          ? _value.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionRequestResponseImpl implements _TransactionRequestResponse {
  const _$TransactionRequestResponseImpl(
      {required this.transaction, this.message, this.redirect});

  factory _$TransactionRequestResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionRequestResponseImplFromJson(json);

  @override
  final String transaction;
  @override
  final String? message;
  @override
  final String? redirect;

  @override
  String toString() {
    return 'TransactionRequestResponse(transaction: $transaction, message: $message, redirect: $redirect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionRequestResponseImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transaction, message, redirect);

  /// Create a copy of TransactionRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionRequestResponseImplCopyWith<_$TransactionRequestResponseImpl>
      get copyWith => __$$TransactionRequestResponseImplCopyWithImpl<
          _$TransactionRequestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionRequestResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionRequestResponse
    implements TransactionRequestResponse {
  const factory _TransactionRequestResponse(
      {required final String transaction,
      final String? message,
      final String? redirect}) = _$TransactionRequestResponseImpl;

  factory _TransactionRequestResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionRequestResponseImpl.fromJson;

  @override
  String get transaction;
  @override
  String? get message;
  @override
  String? get redirect;

  /// Create a copy of TransactionRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionRequestResponseImplCopyWith<_$TransactionRequestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
