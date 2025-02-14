// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_address_table_lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageAddressTableLookup {
  Ed25519HDPublicKey get accountKey => throw _privateConstructorUsedError;
  List<int> get writableIndexes => throw _privateConstructorUsedError;
  List<int> get readonlyIndexes => throw _privateConstructorUsedError;

  /// Create a copy of MessageAddressTableLookup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAddressTableLookupCopyWith<MessageAddressTableLookup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAddressTableLookupCopyWith<$Res> {
  factory $MessageAddressTableLookupCopyWith(MessageAddressTableLookup value,
          $Res Function(MessageAddressTableLookup) then) =
      _$MessageAddressTableLookupCopyWithImpl<$Res, MessageAddressTableLookup>;
  @useResult
  $Res call(
      {Ed25519HDPublicKey accountKey,
      List<int> writableIndexes,
      List<int> readonlyIndexes});
}

/// @nodoc
class _$MessageAddressTableLookupCopyWithImpl<$Res,
        $Val extends MessageAddressTableLookup>
    implements $MessageAddressTableLookupCopyWith<$Res> {
  _$MessageAddressTableLookupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAddressTableLookup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountKey = null,
    Object? writableIndexes = null,
    Object? readonlyIndexes = null,
  }) {
    return _then(_value.copyWith(
      accountKey: null == accountKey
          ? _value.accountKey
          : accountKey // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey,
      writableIndexes: null == writableIndexes
          ? _value.writableIndexes
          : writableIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      readonlyIndexes: null == readonlyIndexes
          ? _value.readonlyIndexes
          : readonlyIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAddressTableLookupImplCopyWith<$Res>
    implements $MessageAddressTableLookupCopyWith<$Res> {
  factory _$$MessageAddressTableLookupImplCopyWith(
          _$MessageAddressTableLookupImpl value,
          $Res Function(_$MessageAddressTableLookupImpl) then) =
      __$$MessageAddressTableLookupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ed25519HDPublicKey accountKey,
      List<int> writableIndexes,
      List<int> readonlyIndexes});
}

/// @nodoc
class __$$MessageAddressTableLookupImplCopyWithImpl<$Res>
    extends _$MessageAddressTableLookupCopyWithImpl<$Res,
        _$MessageAddressTableLookupImpl>
    implements _$$MessageAddressTableLookupImplCopyWith<$Res> {
  __$$MessageAddressTableLookupImplCopyWithImpl(
      _$MessageAddressTableLookupImpl _value,
      $Res Function(_$MessageAddressTableLookupImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAddressTableLookup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountKey = null,
    Object? writableIndexes = null,
    Object? readonlyIndexes = null,
  }) {
    return _then(_$MessageAddressTableLookupImpl(
      accountKey: null == accountKey
          ? _value.accountKey
          : accountKey // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey,
      writableIndexes: null == writableIndexes
          ? _value._writableIndexes
          : writableIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      readonlyIndexes: null == readonlyIndexes
          ? _value._readonlyIndexes
          : readonlyIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MessageAddressTableLookupImpl implements _MessageAddressTableLookup {
  const _$MessageAddressTableLookupImpl(
      {required this.accountKey,
      required final List<int> writableIndexes,
      required final List<int> readonlyIndexes})
      : _writableIndexes = writableIndexes,
        _readonlyIndexes = readonlyIndexes;

  @override
  final Ed25519HDPublicKey accountKey;
  final List<int> _writableIndexes;
  @override
  List<int> get writableIndexes {
    if (_writableIndexes is EqualUnmodifiableListView) return _writableIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_writableIndexes);
  }

  final List<int> _readonlyIndexes;
  @override
  List<int> get readonlyIndexes {
    if (_readonlyIndexes is EqualUnmodifiableListView) return _readonlyIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readonlyIndexes);
  }

  @override
  String toString() {
    return 'MessageAddressTableLookup(accountKey: $accountKey, writableIndexes: $writableIndexes, readonlyIndexes: $readonlyIndexes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAddressTableLookupImpl &&
            (identical(other.accountKey, accountKey) ||
                other.accountKey == accountKey) &&
            const DeepCollectionEquality()
                .equals(other._writableIndexes, _writableIndexes) &&
            const DeepCollectionEquality()
                .equals(other._readonlyIndexes, _readonlyIndexes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountKey,
      const DeepCollectionEquality().hash(_writableIndexes),
      const DeepCollectionEquality().hash(_readonlyIndexes));

  /// Create a copy of MessageAddressTableLookup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAddressTableLookupImplCopyWith<_$MessageAddressTableLookupImpl>
      get copyWith => __$$MessageAddressTableLookupImplCopyWithImpl<
          _$MessageAddressTableLookupImpl>(this, _$identity);
}

abstract class _MessageAddressTableLookup implements MessageAddressTableLookup {
  const factory _MessageAddressTableLookup(
          {required final Ed25519HDPublicKey accountKey,
          required final List<int> writableIndexes,
          required final List<int> readonlyIndexes}) =
      _$MessageAddressTableLookupImpl;

  @override
  Ed25519HDPublicKey get accountKey;
  @override
  List<int> get writableIndexes;
  @override
  List<int> get readonlyIndexes;

  /// Create a copy of MessageAddressTableLookup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAddressTableLookupImplCopyWith<_$MessageAddressTableLookupImpl>
      get copyWith => throw _privateConstructorUsedError;
}
