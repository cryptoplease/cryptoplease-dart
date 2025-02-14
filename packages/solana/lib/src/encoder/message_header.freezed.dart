// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageHeader {
  int get numRequiredSignatures => throw _privateConstructorUsedError;
  int get numReadonlySignedAccounts => throw _privateConstructorUsedError;
  int get numReadonlyUnsignedAccounts => throw _privateConstructorUsedError;

  /// Create a copy of MessageHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageHeaderCopyWith<MessageHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageHeaderCopyWith<$Res> {
  factory $MessageHeaderCopyWith(
          MessageHeader value, $Res Function(MessageHeader) then) =
      _$MessageHeaderCopyWithImpl<$Res, MessageHeader>;
  @useResult
  $Res call(
      {int numRequiredSignatures,
      int numReadonlySignedAccounts,
      int numReadonlyUnsignedAccounts});
}

/// @nodoc
class _$MessageHeaderCopyWithImpl<$Res, $Val extends MessageHeader>
    implements $MessageHeaderCopyWith<$Res> {
  _$MessageHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numRequiredSignatures = null,
    Object? numReadonlySignedAccounts = null,
    Object? numReadonlyUnsignedAccounts = null,
  }) {
    return _then(_value.copyWith(
      numRequiredSignatures: null == numRequiredSignatures
          ? _value.numRequiredSignatures
          : numRequiredSignatures // ignore: cast_nullable_to_non_nullable
              as int,
      numReadonlySignedAccounts: null == numReadonlySignedAccounts
          ? _value.numReadonlySignedAccounts
          : numReadonlySignedAccounts // ignore: cast_nullable_to_non_nullable
              as int,
      numReadonlyUnsignedAccounts: null == numReadonlyUnsignedAccounts
          ? _value.numReadonlyUnsignedAccounts
          : numReadonlyUnsignedAccounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageHeaderImplCopyWith<$Res>
    implements $MessageHeaderCopyWith<$Res> {
  factory _$$MessageHeaderImplCopyWith(
          _$MessageHeaderImpl value, $Res Function(_$MessageHeaderImpl) then) =
      __$$MessageHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numRequiredSignatures,
      int numReadonlySignedAccounts,
      int numReadonlyUnsignedAccounts});
}

/// @nodoc
class __$$MessageHeaderImplCopyWithImpl<$Res>
    extends _$MessageHeaderCopyWithImpl<$Res, _$MessageHeaderImpl>
    implements _$$MessageHeaderImplCopyWith<$Res> {
  __$$MessageHeaderImplCopyWithImpl(
      _$MessageHeaderImpl _value, $Res Function(_$MessageHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numRequiredSignatures = null,
    Object? numReadonlySignedAccounts = null,
    Object? numReadonlyUnsignedAccounts = null,
  }) {
    return _then(_$MessageHeaderImpl(
      numRequiredSignatures: null == numRequiredSignatures
          ? _value.numRequiredSignatures
          : numRequiredSignatures // ignore: cast_nullable_to_non_nullable
              as int,
      numReadonlySignedAccounts: null == numReadonlySignedAccounts
          ? _value.numReadonlySignedAccounts
          : numReadonlySignedAccounts // ignore: cast_nullable_to_non_nullable
              as int,
      numReadonlyUnsignedAccounts: null == numReadonlyUnsignedAccounts
          ? _value.numReadonlyUnsignedAccounts
          : numReadonlyUnsignedAccounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MessageHeaderImpl extends _MessageHeader {
  const _$MessageHeaderImpl(
      {required this.numRequiredSignatures,
      required this.numReadonlySignedAccounts,
      required this.numReadonlyUnsignedAccounts})
      : super._();

  @override
  final int numRequiredSignatures;
  @override
  final int numReadonlySignedAccounts;
  @override
  final int numReadonlyUnsignedAccounts;

  @override
  String toString() {
    return 'MessageHeader(numRequiredSignatures: $numRequiredSignatures, numReadonlySignedAccounts: $numReadonlySignedAccounts, numReadonlyUnsignedAccounts: $numReadonlyUnsignedAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageHeaderImpl &&
            (identical(other.numRequiredSignatures, numRequiredSignatures) ||
                other.numRequiredSignatures == numRequiredSignatures) &&
            (identical(other.numReadonlySignedAccounts,
                    numReadonlySignedAccounts) ||
                other.numReadonlySignedAccounts == numReadonlySignedAccounts) &&
            (identical(other.numReadonlyUnsignedAccounts,
                    numReadonlyUnsignedAccounts) ||
                other.numReadonlyUnsignedAccounts ==
                    numReadonlyUnsignedAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numRequiredSignatures,
      numReadonlySignedAccounts, numReadonlyUnsignedAccounts);

  /// Create a copy of MessageHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageHeaderImplCopyWith<_$MessageHeaderImpl> get copyWith =>
      __$$MessageHeaderImplCopyWithImpl<_$MessageHeaderImpl>(this, _$identity);
}

abstract class _MessageHeader extends MessageHeader {
  const factory _MessageHeader(
      {required final int numRequiredSignatures,
      required final int numReadonlySignedAccounts,
      required final int numReadonlyUnsignedAccounts}) = _$MessageHeaderImpl;
  const _MessageHeader._() : super._();

  @override
  int get numRequiredSignatures;
  @override
  int get numReadonlySignedAccounts;
  @override
  int get numReadonlyUnsignedAccounts;

  /// Create a copy of MessageHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageHeaderImplCopyWith<_$MessageHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
