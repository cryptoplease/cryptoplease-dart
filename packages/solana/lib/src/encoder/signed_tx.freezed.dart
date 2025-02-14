// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signed_tx.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignedTx {
  List<Signature> get signatures => throw _privateConstructorUsedError;
  CompiledMessage get compiledMessage => throw _privateConstructorUsedError;

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignedTxCopyWith<SignedTx> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignedTxCopyWith<$Res> {
  factory $SignedTxCopyWith(SignedTx value, $Res Function(SignedTx) then) =
      _$SignedTxCopyWithImpl<$Res, SignedTx>;
  @useResult
  $Res call({List<Signature> signatures, CompiledMessage compiledMessage});

  $CompiledMessageCopyWith<$Res> get compiledMessage;
}

/// @nodoc
class _$SignedTxCopyWithImpl<$Res, $Val extends SignedTx>
    implements $SignedTxCopyWith<$Res> {
  _$SignedTxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatures = null,
    Object? compiledMessage = null,
  }) {
    return _then(_value.copyWith(
      signatures: null == signatures
          ? _value.signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<Signature>,
      compiledMessage: null == compiledMessage
          ? _value.compiledMessage
          : compiledMessage // ignore: cast_nullable_to_non_nullable
              as CompiledMessage,
    ) as $Val);
  }

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompiledMessageCopyWith<$Res> get compiledMessage {
    return $CompiledMessageCopyWith<$Res>(_value.compiledMessage, (value) {
      return _then(_value.copyWith(compiledMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignedTxImplCopyWith<$Res>
    implements $SignedTxCopyWith<$Res> {
  factory _$$SignedTxImplCopyWith(
          _$SignedTxImpl value, $Res Function(_$SignedTxImpl) then) =
      __$$SignedTxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Signature> signatures, CompiledMessage compiledMessage});

  @override
  $CompiledMessageCopyWith<$Res> get compiledMessage;
}

/// @nodoc
class __$$SignedTxImplCopyWithImpl<$Res>
    extends _$SignedTxCopyWithImpl<$Res, _$SignedTxImpl>
    implements _$$SignedTxImplCopyWith<$Res> {
  __$$SignedTxImplCopyWithImpl(
      _$SignedTxImpl _value, $Res Function(_$SignedTxImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signatures = null,
    Object? compiledMessage = null,
  }) {
    return _then(_$SignedTxImpl(
      signatures: null == signatures
          ? _value._signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<Signature>,
      compiledMessage: null == compiledMessage
          ? _value.compiledMessage
          : compiledMessage // ignore: cast_nullable_to_non_nullable
              as CompiledMessage,
    ));
  }
}

/// @nodoc

class _$SignedTxImpl extends _SignedTx {
  const _$SignedTxImpl(
      {final List<Signature> signatures = const <Signature>[],
      required this.compiledMessage})
      : _signatures = signatures,
        super._();

  final List<Signature> _signatures;
  @override
  @JsonKey()
  List<Signature> get signatures {
    if (_signatures is EqualUnmodifiableListView) return _signatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signatures);
  }

  @override
  final CompiledMessage compiledMessage;

  @override
  String toString() {
    return 'SignedTx(signatures: $signatures, compiledMessage: $compiledMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedTxImpl &&
            const DeepCollectionEquality()
                .equals(other._signatures, _signatures) &&
            (identical(other.compiledMessage, compiledMessage) ||
                other.compiledMessage == compiledMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_signatures), compiledMessage);

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedTxImplCopyWith<_$SignedTxImpl> get copyWith =>
      __$$SignedTxImplCopyWithImpl<_$SignedTxImpl>(this, _$identity);
}

abstract class _SignedTx extends SignedTx {
  const factory _SignedTx(
      {final List<Signature> signatures,
      required final CompiledMessage compiledMessage}) = _$SignedTxImpl;
  const _SignedTx._() : super._();

  @override
  List<Signature> get signatures;
  @override
  CompiledMessage get compiledMessage;

  /// Create a copy of SignedTx
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignedTxImplCopyWith<_$SignedTxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
