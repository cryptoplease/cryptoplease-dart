// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loaded_addresses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadedAddresses {
  List<Ed25519HDPublicKey> get writable => throw _privateConstructorUsedError;
  List<Ed25519HDPublicKey> get readonly => throw _privateConstructorUsedError;

  /// Create a copy of LoadedAddresses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadedAddressesCopyWith<LoadedAddresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedAddressesCopyWith<$Res> {
  factory $LoadedAddressesCopyWith(
          LoadedAddresses value, $Res Function(LoadedAddresses) then) =
      _$LoadedAddressesCopyWithImpl<$Res, LoadedAddresses>;
  @useResult
  $Res call(
      {List<Ed25519HDPublicKey> writable, List<Ed25519HDPublicKey> readonly});
}

/// @nodoc
class _$LoadedAddressesCopyWithImpl<$Res, $Val extends LoadedAddresses>
    implements $LoadedAddressesCopyWith<$Res> {
  _$LoadedAddressesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadedAddresses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? writable = null,
    Object? readonly = null,
  }) {
    return _then(_value.copyWith(
      writable: null == writable
          ? _value.writable
          : writable // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
      readonly: null == readonly
          ? _value.readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedAddressesImplCopyWith<$Res>
    implements $LoadedAddressesCopyWith<$Res> {
  factory _$$LoadedAddressesImplCopyWith(_$LoadedAddressesImpl value,
          $Res Function(_$LoadedAddressesImpl) then) =
      __$$LoadedAddressesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ed25519HDPublicKey> writable, List<Ed25519HDPublicKey> readonly});
}

/// @nodoc
class __$$LoadedAddressesImplCopyWithImpl<$Res>
    extends _$LoadedAddressesCopyWithImpl<$Res, _$LoadedAddressesImpl>
    implements _$$LoadedAddressesImplCopyWith<$Res> {
  __$$LoadedAddressesImplCopyWithImpl(
      _$LoadedAddressesImpl _value, $Res Function(_$LoadedAddressesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadedAddresses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? writable = null,
    Object? readonly = null,
  }) {
    return _then(_$LoadedAddressesImpl(
      writable: null == writable
          ? _value._writable
          : writable // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
      readonly: null == readonly
          ? _value._readonly
          : readonly // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
    ));
  }
}

/// @nodoc

class _$LoadedAddressesImpl implements _LoadedAddresses {
  const _$LoadedAddressesImpl(
      {required final List<Ed25519HDPublicKey> writable,
      required final List<Ed25519HDPublicKey> readonly})
      : _writable = writable,
        _readonly = readonly;

  final List<Ed25519HDPublicKey> _writable;
  @override
  List<Ed25519HDPublicKey> get writable {
    if (_writable is EqualUnmodifiableListView) return _writable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_writable);
  }

  final List<Ed25519HDPublicKey> _readonly;
  @override
  List<Ed25519HDPublicKey> get readonly {
    if (_readonly is EqualUnmodifiableListView) return _readonly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readonly);
  }

  @override
  String toString() {
    return 'LoadedAddresses(writable: $writable, readonly: $readonly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAddressesImpl &&
            const DeepCollectionEquality().equals(other._writable, _writable) &&
            const DeepCollectionEquality().equals(other._readonly, _readonly));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_writable),
      const DeepCollectionEquality().hash(_readonly));

  /// Create a copy of LoadedAddresses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAddressesImplCopyWith<_$LoadedAddressesImpl> get copyWith =>
      __$$LoadedAddressesImplCopyWithImpl<_$LoadedAddressesImpl>(
          this, _$identity);
}

abstract class _LoadedAddresses implements LoadedAddresses {
  const factory _LoadedAddresses(
          {required final List<Ed25519HDPublicKey> writable,
          required final List<Ed25519HDPublicKey> readonly}) =
      _$LoadedAddressesImpl;

  @override
  List<Ed25519HDPublicKey> get writable;
  @override
  List<Ed25519HDPublicKey> get readonly;

  /// Create a copy of LoadedAddresses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedAddressesImplCopyWith<_$LoadedAddressesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
