// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compiled_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompiledMessage {
  MessageHeader get header => throw _privateConstructorUsedError;
  List<Ed25519HDPublicKey> get accountKeys =>
      throw _privateConstructorUsedError;
  String get recentBlockhash => throw _privateConstructorUsedError;
  List<CompiledInstruction> get instructions =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)
        legacy,
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)
        v0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)?
        legacy,
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageHeader header, List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash, List<CompiledInstruction> instructions)?
        legacy,
    TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompiledMessageLegacy value) legacy,
    required TResult Function(CompiledMessageV0 value) v0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompiledMessageLegacy value)? legacy,
    TResult? Function(CompiledMessageV0 value)? v0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompiledMessageLegacy value)? legacy,
    TResult Function(CompiledMessageV0 value)? v0,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompiledMessageCopyWith<CompiledMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompiledMessageCopyWith<$Res> {
  factory $CompiledMessageCopyWith(
          CompiledMessage value, $Res Function(CompiledMessage) then) =
      _$CompiledMessageCopyWithImpl<$Res, CompiledMessage>;
  @useResult
  $Res call(
      {MessageHeader header,
      List<Ed25519HDPublicKey> accountKeys,
      String recentBlockhash,
      List<CompiledInstruction> instructions});

  $MessageHeaderCopyWith<$Res> get header;
}

/// @nodoc
class _$CompiledMessageCopyWithImpl<$Res, $Val extends CompiledMessage>
    implements $CompiledMessageCopyWith<$Res> {
  _$CompiledMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? accountKeys = null,
    Object? recentBlockhash = null,
    Object? instructions = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as MessageHeader,
      accountKeys: null == accountKeys
          ? _value.accountKeys
          : accountKeys // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
      recentBlockhash: null == recentBlockhash
          ? _value.recentBlockhash
          : recentBlockhash // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<CompiledInstruction>,
    ) as $Val);
  }

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageHeaderCopyWith<$Res> get header {
    return $MessageHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompiledMessageLegacyImplCopyWith<$Res>
    implements $CompiledMessageCopyWith<$Res> {
  factory _$$CompiledMessageLegacyImplCopyWith(
          _$CompiledMessageLegacyImpl value,
          $Res Function(_$CompiledMessageLegacyImpl) then) =
      __$$CompiledMessageLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageHeader header,
      List<Ed25519HDPublicKey> accountKeys,
      String recentBlockhash,
      List<CompiledInstruction> instructions});

  @override
  $MessageHeaderCopyWith<$Res> get header;
}

/// @nodoc
class __$$CompiledMessageLegacyImplCopyWithImpl<$Res>
    extends _$CompiledMessageCopyWithImpl<$Res, _$CompiledMessageLegacyImpl>
    implements _$$CompiledMessageLegacyImplCopyWith<$Res> {
  __$$CompiledMessageLegacyImplCopyWithImpl(_$CompiledMessageLegacyImpl _value,
      $Res Function(_$CompiledMessageLegacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? accountKeys = null,
    Object? recentBlockhash = null,
    Object? instructions = null,
  }) {
    return _then(_$CompiledMessageLegacyImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as MessageHeader,
      accountKeys: null == accountKeys
          ? _value._accountKeys
          : accountKeys // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
      recentBlockhash: null == recentBlockhash
          ? _value.recentBlockhash
          : recentBlockhash // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<CompiledInstruction>,
    ));
  }
}

/// @nodoc

class _$CompiledMessageLegacyImpl extends CompiledMessageLegacy {
  const _$CompiledMessageLegacyImpl(
      {required this.header,
      required final List<Ed25519HDPublicKey> accountKeys,
      required this.recentBlockhash,
      required final List<CompiledInstruction> instructions})
      : _accountKeys = accountKeys,
        _instructions = instructions,
        super._();

  @override
  final MessageHeader header;
  final List<Ed25519HDPublicKey> _accountKeys;
  @override
  List<Ed25519HDPublicKey> get accountKeys {
    if (_accountKeys is EqualUnmodifiableListView) return _accountKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountKeys);
  }

  @override
  final String recentBlockhash;
  final List<CompiledInstruction> _instructions;
  @override
  List<CompiledInstruction> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  String toString() {
    return 'CompiledMessage.legacy(header: $header, accountKeys: $accountKeys, recentBlockhash: $recentBlockhash, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompiledMessageLegacyImpl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality()
                .equals(other._accountKeys, _accountKeys) &&
            (identical(other.recentBlockhash, recentBlockhash) ||
                other.recentBlockhash == recentBlockhash) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      header,
      const DeepCollectionEquality().hash(_accountKeys),
      recentBlockhash,
      const DeepCollectionEquality().hash(_instructions));

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompiledMessageLegacyImplCopyWith<_$CompiledMessageLegacyImpl>
      get copyWith => __$$CompiledMessageLegacyImplCopyWithImpl<
          _$CompiledMessageLegacyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)
        legacy,
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)
        v0,
  }) {
    return legacy(header, accountKeys, recentBlockhash, instructions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)?
        legacy,
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
  }) {
    return legacy?.call(header, accountKeys, recentBlockhash, instructions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageHeader header, List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash, List<CompiledInstruction> instructions)?
        legacy,
    TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(header, accountKeys, recentBlockhash, instructions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompiledMessageLegacy value) legacy,
    required TResult Function(CompiledMessageV0 value) v0,
  }) {
    return legacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompiledMessageLegacy value)? legacy,
    TResult? Function(CompiledMessageV0 value)? v0,
  }) {
    return legacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompiledMessageLegacy value)? legacy,
    TResult Function(CompiledMessageV0 value)? v0,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(this);
    }
    return orElse();
  }
}

abstract class CompiledMessageLegacy extends CompiledMessage {
  const factory CompiledMessageLegacy(
          {required final MessageHeader header,
          required final List<Ed25519HDPublicKey> accountKeys,
          required final String recentBlockhash,
          required final List<CompiledInstruction> instructions}) =
      _$CompiledMessageLegacyImpl;
  const CompiledMessageLegacy._() : super._();

  @override
  MessageHeader get header;
  @override
  List<Ed25519HDPublicKey> get accountKeys;
  @override
  String get recentBlockhash;
  @override
  List<CompiledInstruction> get instructions;

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompiledMessageLegacyImplCopyWith<_$CompiledMessageLegacyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompiledMessageV0ImplCopyWith<$Res>
    implements $CompiledMessageCopyWith<$Res> {
  factory _$$CompiledMessageV0ImplCopyWith(_$CompiledMessageV0Impl value,
          $Res Function(_$CompiledMessageV0Impl) then) =
      __$$CompiledMessageV0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageHeader header,
      List<Ed25519HDPublicKey> accountKeys,
      String recentBlockhash,
      List<CompiledInstruction> instructions,
      List<MessageAddressTableLookup> addressTableLookups});

  @override
  $MessageHeaderCopyWith<$Res> get header;
}

/// @nodoc
class __$$CompiledMessageV0ImplCopyWithImpl<$Res>
    extends _$CompiledMessageCopyWithImpl<$Res, _$CompiledMessageV0Impl>
    implements _$$CompiledMessageV0ImplCopyWith<$Res> {
  __$$CompiledMessageV0ImplCopyWithImpl(_$CompiledMessageV0Impl _value,
      $Res Function(_$CompiledMessageV0Impl) _then)
      : super(_value, _then);

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? accountKeys = null,
    Object? recentBlockhash = null,
    Object? instructions = null,
    Object? addressTableLookups = null,
  }) {
    return _then(_$CompiledMessageV0Impl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as MessageHeader,
      accountKeys: null == accountKeys
          ? _value._accountKeys
          : accountKeys // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
      recentBlockhash: null == recentBlockhash
          ? _value.recentBlockhash
          : recentBlockhash // ignore: cast_nullable_to_non_nullable
              as String,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<CompiledInstruction>,
      addressTableLookups: null == addressTableLookups
          ? _value._addressTableLookups
          : addressTableLookups // ignore: cast_nullable_to_non_nullable
              as List<MessageAddressTableLookup>,
    ));
  }
}

/// @nodoc

class _$CompiledMessageV0Impl extends CompiledMessageV0 {
  const _$CompiledMessageV0Impl(
      {required this.header,
      required final List<Ed25519HDPublicKey> accountKeys,
      required this.recentBlockhash,
      required final List<CompiledInstruction> instructions,
      required final List<MessageAddressTableLookup> addressTableLookups})
      : _accountKeys = accountKeys,
        _instructions = instructions,
        _addressTableLookups = addressTableLookups,
        super._();

  @override
  final MessageHeader header;
  final List<Ed25519HDPublicKey> _accountKeys;
  @override
  List<Ed25519HDPublicKey> get accountKeys {
    if (_accountKeys is EqualUnmodifiableListView) return _accountKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountKeys);
  }

  @override
  final String recentBlockhash;
  final List<CompiledInstruction> _instructions;
  @override
  List<CompiledInstruction> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  final List<MessageAddressTableLookup> _addressTableLookups;
  @override
  List<MessageAddressTableLookup> get addressTableLookups {
    if (_addressTableLookups is EqualUnmodifiableListView)
      return _addressTableLookups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressTableLookups);
  }

  @override
  String toString() {
    return 'CompiledMessage.v0(header: $header, accountKeys: $accountKeys, recentBlockhash: $recentBlockhash, instructions: $instructions, addressTableLookups: $addressTableLookups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompiledMessageV0Impl &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality()
                .equals(other._accountKeys, _accountKeys) &&
            (identical(other.recentBlockhash, recentBlockhash) ||
                other.recentBlockhash == recentBlockhash) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            const DeepCollectionEquality()
                .equals(other._addressTableLookups, _addressTableLookups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      header,
      const DeepCollectionEquality().hash(_accountKeys),
      recentBlockhash,
      const DeepCollectionEquality().hash(_instructions),
      const DeepCollectionEquality().hash(_addressTableLookups));

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompiledMessageV0ImplCopyWith<_$CompiledMessageV0Impl> get copyWith =>
      __$$CompiledMessageV0ImplCopyWithImpl<_$CompiledMessageV0Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)
        legacy,
    required TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)
        v0,
  }) {
    return v0(header, accountKeys, recentBlockhash, instructions,
        addressTableLookups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions)?
        legacy,
    TResult? Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
  }) {
    return v0?.call(header, accountKeys, recentBlockhash, instructions,
        addressTableLookups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageHeader header, List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash, List<CompiledInstruction> instructions)?
        legacy,
    TResult Function(
            MessageHeader header,
            List<Ed25519HDPublicKey> accountKeys,
            String recentBlockhash,
            List<CompiledInstruction> instructions,
            List<MessageAddressTableLookup> addressTableLookups)?
        v0,
    required TResult orElse(),
  }) {
    if (v0 != null) {
      return v0(header, accountKeys, recentBlockhash, instructions,
          addressTableLookups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompiledMessageLegacy value) legacy,
    required TResult Function(CompiledMessageV0 value) v0,
  }) {
    return v0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompiledMessageLegacy value)? legacy,
    TResult? Function(CompiledMessageV0 value)? v0,
  }) {
    return v0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompiledMessageLegacy value)? legacy,
    TResult Function(CompiledMessageV0 value)? v0,
    required TResult orElse(),
  }) {
    if (v0 != null) {
      return v0(this);
    }
    return orElse();
  }
}

abstract class CompiledMessageV0 extends CompiledMessage {
  const factory CompiledMessageV0(
          {required final MessageHeader header,
          required final List<Ed25519HDPublicKey> accountKeys,
          required final String recentBlockhash,
          required final List<CompiledInstruction> instructions,
          required final List<MessageAddressTableLookup> addressTableLookups}) =
      _$CompiledMessageV0Impl;
  const CompiledMessageV0._() : super._();

  @override
  MessageHeader get header;
  @override
  List<Ed25519HDPublicKey> get accountKeys;
  @override
  String get recentBlockhash;
  @override
  List<CompiledInstruction> get instructions;
  List<MessageAddressTableLookup> get addressTableLookups;

  /// Create a copy of CompiledMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompiledMessageV0ImplCopyWith<_$CompiledMessageV0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
