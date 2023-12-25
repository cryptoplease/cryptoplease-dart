// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_direct_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DirectPaymentResult {
  int get fee => throw _privateConstructorUsedError;
  BigInt get slot => throw _privateConstructorUsedError;
  SignedTx get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectPaymentResultCopyWith<DirectPaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectPaymentResultCopyWith<$Res> {
  factory $DirectPaymentResultCopyWith(
          DirectPaymentResult value, $Res Function(DirectPaymentResult) then) =
      _$DirectPaymentResultCopyWithImpl<$Res, DirectPaymentResult>;
  @useResult
  $Res call({int fee, BigInt slot, SignedTx transaction});

  $SignedTxCopyWith<$Res> get transaction;
}

/// @nodoc
class _$DirectPaymentResultCopyWithImpl<$Res, $Val extends DirectPaymentResult>
    implements $DirectPaymentResultCopyWith<$Res> {
  _$DirectPaymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
    Object? slot = null,
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SignedTx,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignedTxCopyWith<$Res> get transaction {
    return $SignedTxCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectPaymentResultImplCopyWith<$Res>
    implements $DirectPaymentResultCopyWith<$Res> {
  factory _$$DirectPaymentResultImplCopyWith(_$DirectPaymentResultImpl value,
          $Res Function(_$DirectPaymentResultImpl) then) =
      __$$DirectPaymentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fee, BigInt slot, SignedTx transaction});

  @override
  $SignedTxCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$DirectPaymentResultImplCopyWithImpl<$Res>
    extends _$DirectPaymentResultCopyWithImpl<$Res, _$DirectPaymentResultImpl>
    implements _$$DirectPaymentResultImplCopyWith<$Res> {
  __$$DirectPaymentResultImplCopyWithImpl(_$DirectPaymentResultImpl _value,
      $Res Function(_$DirectPaymentResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
    Object? slot = null,
    Object? transaction = null,
  }) {
    return _then(_$DirectPaymentResultImpl(
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as BigInt,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SignedTx,
    ));
  }
}

/// @nodoc

class _$DirectPaymentResultImpl implements _DirectPaymentResult {
  const _$DirectPaymentResultImpl(
      {required this.fee, required this.slot, required this.transaction});

  @override
  final int fee;
  @override
  final BigInt slot;
  @override
  final SignedTx transaction;

  @override
  String toString() {
    return 'DirectPaymentResult(fee: $fee, slot: $slot, transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectPaymentResultImpl &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fee, slot, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectPaymentResultImplCopyWith<_$DirectPaymentResultImpl> get copyWith =>
      __$$DirectPaymentResultImplCopyWithImpl<_$DirectPaymentResultImpl>(
          this, _$identity);
}

abstract class _DirectPaymentResult implements DirectPaymentResult {
  const factory _DirectPaymentResult(
      {required final int fee,
      required final BigInt slot,
      required final SignedTx transaction}) = _$DirectPaymentResultImpl;

  @override
  int get fee;
  @override
  BigInt get slot;
  @override
  SignedTx get transaction;
  @override
  @JsonKey(ignore: true)
  _$$DirectPaymentResultImplCopyWith<_$DirectPaymentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
