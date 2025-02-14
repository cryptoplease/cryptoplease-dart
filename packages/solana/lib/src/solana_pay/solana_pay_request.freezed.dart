// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solana_pay_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SolanaPayRequest {
  Ed25519HDPublicKey get recipient => throw _privateConstructorUsedError;
  Decimal? get amount => throw _privateConstructorUsedError;
  Ed25519HDPublicKey? get splToken => throw _privateConstructorUsedError;
  Iterable<Ed25519HDPublicKey>? get reference =>
      throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;

  /// Create a copy of SolanaPayRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SolanaPayRequestCopyWith<SolanaPayRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolanaPayRequestCopyWith<$Res> {
  factory $SolanaPayRequestCopyWith(
          SolanaPayRequest value, $Res Function(SolanaPayRequest) then) =
      _$SolanaPayRequestCopyWithImpl<$Res, SolanaPayRequest>;
  @useResult
  $Res call(
      {Ed25519HDPublicKey recipient,
      Decimal? amount,
      Ed25519HDPublicKey? splToken,
      Iterable<Ed25519HDPublicKey>? reference,
      String? label,
      String? message,
      String? memo});
}

/// @nodoc
class _$SolanaPayRequestCopyWithImpl<$Res, $Val extends SolanaPayRequest>
    implements $SolanaPayRequestCopyWith<$Res> {
  _$SolanaPayRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SolanaPayRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? amount = freezed,
    Object? splToken = freezed,
    Object? reference = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      splToken: freezed == splToken
          ? _value.splToken
          : splToken // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Iterable<Ed25519HDPublicKey>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolanaPayRequestImplCopyWith<$Res>
    implements $SolanaPayRequestCopyWith<$Res> {
  factory _$$SolanaPayRequestImplCopyWith(_$SolanaPayRequestImpl value,
          $Res Function(_$SolanaPayRequestImpl) then) =
      __$$SolanaPayRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ed25519HDPublicKey recipient,
      Decimal? amount,
      Ed25519HDPublicKey? splToken,
      Iterable<Ed25519HDPublicKey>? reference,
      String? label,
      String? message,
      String? memo});
}

/// @nodoc
class __$$SolanaPayRequestImplCopyWithImpl<$Res>
    extends _$SolanaPayRequestCopyWithImpl<$Res, _$SolanaPayRequestImpl>
    implements _$$SolanaPayRequestImplCopyWith<$Res> {
  __$$SolanaPayRequestImplCopyWithImpl(_$SolanaPayRequestImpl _value,
      $Res Function(_$SolanaPayRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SolanaPayRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = null,
    Object? amount = freezed,
    Object? splToken = freezed,
    Object? reference = freezed,
    Object? label = freezed,
    Object? message = freezed,
    Object? memo = freezed,
  }) {
    return _then(_$SolanaPayRequestImpl(
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Decimal?,
      splToken: freezed == splToken
          ? _value.splToken
          : splToken // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Iterable<Ed25519HDPublicKey>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SolanaPayRequestImpl extends _SolanaPayRequest {
  const _$SolanaPayRequestImpl(
      {required this.recipient,
      this.amount,
      this.splToken,
      this.reference,
      this.label,
      this.message,
      this.memo})
      : super._();

  @override
  final Ed25519HDPublicKey recipient;
  @override
  final Decimal? amount;
  @override
  final Ed25519HDPublicKey? splToken;
  @override
  final Iterable<Ed25519HDPublicKey>? reference;
  @override
  final String? label;
  @override
  final String? message;
  @override
  final String? memo;

  @override
  String toString() {
    return 'SolanaPayRequest(recipient: $recipient, amount: $amount, splToken: $splToken, reference: $reference, label: $label, message: $message, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolanaPayRequestImpl &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.splToken, splToken) ||
                other.splToken == splToken) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipient, amount, splToken,
      const DeepCollectionEquality().hash(reference), label, message, memo);

  /// Create a copy of SolanaPayRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SolanaPayRequestImplCopyWith<_$SolanaPayRequestImpl> get copyWith =>
      __$$SolanaPayRequestImplCopyWithImpl<_$SolanaPayRequestImpl>(
          this, _$identity);
}

abstract class _SolanaPayRequest extends SolanaPayRequest {
  const factory _SolanaPayRequest(
      {required final Ed25519HDPublicKey recipient,
      final Decimal? amount,
      final Ed25519HDPublicKey? splToken,
      final Iterable<Ed25519HDPublicKey>? reference,
      final String? label,
      final String? message,
      final String? memo}) = _$SolanaPayRequestImpl;
  const _SolanaPayRequest._() : super._();

  @override
  Ed25519HDPublicKey get recipient;
  @override
  Decimal? get amount;
  @override
  Ed25519HDPublicKey? get splToken;
  @override
  Iterable<Ed25519HDPublicKey>? get reference;
  @override
  String? get label;
  @override
  String? get message;
  @override
  String? get memo;

  /// Create a copy of SolanaPayRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SolanaPayRequestImplCopyWith<_$SolanaPayRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
