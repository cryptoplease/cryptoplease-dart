// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solana_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SolanaTransactionRequest {
  Uri get link => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of SolanaTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SolanaTransactionRequestCopyWith<SolanaTransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolanaTransactionRequestCopyWith<$Res> {
  factory $SolanaTransactionRequestCopyWith(SolanaTransactionRequest value,
          $Res Function(SolanaTransactionRequest) then) =
      _$SolanaTransactionRequestCopyWithImpl<$Res, SolanaTransactionRequest>;
  @useResult
  $Res call({Uri link, String? label, String? message});
}

/// @nodoc
class _$SolanaTransactionRequestCopyWithImpl<$Res,
        $Val extends SolanaTransactionRequest>
    implements $SolanaTransactionRequestCopyWith<$Res> {
  _$SolanaTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SolanaTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? label = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolanaTransactionRequestImplCopyWith<$Res>
    implements $SolanaTransactionRequestCopyWith<$Res> {
  factory _$$SolanaTransactionRequestImplCopyWith(
          _$SolanaTransactionRequestImpl value,
          $Res Function(_$SolanaTransactionRequestImpl) then) =
      __$$SolanaTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri link, String? label, String? message});
}

/// @nodoc
class __$$SolanaTransactionRequestImplCopyWithImpl<$Res>
    extends _$SolanaTransactionRequestCopyWithImpl<$Res,
        _$SolanaTransactionRequestImpl>
    implements _$$SolanaTransactionRequestImplCopyWith<$Res> {
  __$$SolanaTransactionRequestImplCopyWithImpl(
      _$SolanaTransactionRequestImpl _value,
      $Res Function(_$SolanaTransactionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SolanaTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? label = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SolanaTransactionRequestImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SolanaTransactionRequestImpl extends _SolanaTransactionRequest {
  const _$SolanaTransactionRequestImpl(
      {required this.link, this.label, this.message})
      : super._();

  @override
  final Uri link;
  @override
  final String? label;
  @override
  final String? message;

  @override
  String toString() {
    return 'SolanaTransactionRequest(link: $link, label: $label, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolanaTransactionRequestImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link, label, message);

  /// Create a copy of SolanaTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolanaTransactionRequestImplCopyWith<_$SolanaTransactionRequestImpl>
      get copyWith => __$$SolanaTransactionRequestImplCopyWithImpl<
          _$SolanaTransactionRequestImpl>(this, _$identity);
}

abstract class _SolanaTransactionRequest extends SolanaTransactionRequest {
  const factory _SolanaTransactionRequest(
      {required final Uri link,
      final String? label,
      final String? message}) = _$SolanaTransactionRequestImpl;
  const _SolanaTransactionRequest._() : super._();

  @override
  Uri get link;
  @override
  String? get label;
  @override
  String? get message;

  /// Create a copy of SolanaTransactionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolanaTransactionRequestImplCopyWith<_$SolanaTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
