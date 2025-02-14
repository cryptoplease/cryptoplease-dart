// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_lookup_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressLookupTableState {
  BigInt get deactivationSlot => throw _privateConstructorUsedError;
  int get lastExtendedSlot => throw _privateConstructorUsedError;
  int get lastExtendedSlotStartIndex => throw _privateConstructorUsedError;
  Ed25519HDPublicKey? get authority => throw _privateConstructorUsedError;
  List<Ed25519HDPublicKey> get addresses => throw _privateConstructorUsedError;

  /// Create a copy of AddressLookupTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressLookupTableStateCopyWith<AddressLookupTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressLookupTableStateCopyWith<$Res> {
  factory $AddressLookupTableStateCopyWith(AddressLookupTableState value,
          $Res Function(AddressLookupTableState) then) =
      _$AddressLookupTableStateCopyWithImpl<$Res, AddressLookupTableState>;
  @useResult
  $Res call(
      {BigInt deactivationSlot,
      int lastExtendedSlot,
      int lastExtendedSlotStartIndex,
      Ed25519HDPublicKey? authority,
      List<Ed25519HDPublicKey> addresses});
}

/// @nodoc
class _$AddressLookupTableStateCopyWithImpl<$Res,
        $Val extends AddressLookupTableState>
    implements $AddressLookupTableStateCopyWith<$Res> {
  _$AddressLookupTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressLookupTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deactivationSlot = null,
    Object? lastExtendedSlot = null,
    Object? lastExtendedSlotStartIndex = null,
    Object? authority = freezed,
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      deactivationSlot: null == deactivationSlot
          ? _value.deactivationSlot
          : deactivationSlot // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lastExtendedSlot: null == lastExtendedSlot
          ? _value.lastExtendedSlot
          : lastExtendedSlot // ignore: cast_nullable_to_non_nullable
              as int,
      lastExtendedSlotStartIndex: null == lastExtendedSlotStartIndex
          ? _value.lastExtendedSlotStartIndex
          : lastExtendedSlotStartIndex // ignore: cast_nullable_to_non_nullable
              as int,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey?,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressLookupTableStateImplCopyWith<$Res>
    implements $AddressLookupTableStateCopyWith<$Res> {
  factory _$$AddressLookupTableStateImplCopyWith(
          _$AddressLookupTableStateImpl value,
          $Res Function(_$AddressLookupTableStateImpl) then) =
      __$$AddressLookupTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BigInt deactivationSlot,
      int lastExtendedSlot,
      int lastExtendedSlotStartIndex,
      Ed25519HDPublicKey? authority,
      List<Ed25519HDPublicKey> addresses});
}

/// @nodoc
class __$$AddressLookupTableStateImplCopyWithImpl<$Res>
    extends _$AddressLookupTableStateCopyWithImpl<$Res,
        _$AddressLookupTableStateImpl>
    implements _$$AddressLookupTableStateImplCopyWith<$Res> {
  __$$AddressLookupTableStateImplCopyWithImpl(
      _$AddressLookupTableStateImpl _value,
      $Res Function(_$AddressLookupTableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressLookupTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deactivationSlot = null,
    Object? lastExtendedSlot = null,
    Object? lastExtendedSlotStartIndex = null,
    Object? authority = freezed,
    Object? addresses = null,
  }) {
    return _then(_$AddressLookupTableStateImpl(
      deactivationSlot: null == deactivationSlot
          ? _value.deactivationSlot
          : deactivationSlot // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lastExtendedSlot: null == lastExtendedSlot
          ? _value.lastExtendedSlot
          : lastExtendedSlot // ignore: cast_nullable_to_non_nullable
              as int,
      lastExtendedSlotStartIndex: null == lastExtendedSlotStartIndex
          ? _value.lastExtendedSlotStartIndex
          : lastExtendedSlotStartIndex // ignore: cast_nullable_to_non_nullable
              as int,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as Ed25519HDPublicKey?,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Ed25519HDPublicKey>,
    ));
  }
}

/// @nodoc

class _$AddressLookupTableStateImpl implements _AddressLookupTableState {
  const _$AddressLookupTableStateImpl(
      {required this.deactivationSlot,
      required this.lastExtendedSlot,
      required this.lastExtendedSlotStartIndex,
      required this.authority,
      required final List<Ed25519HDPublicKey> addresses})
      : _addresses = addresses;

  @override
  final BigInt deactivationSlot;
  @override
  final int lastExtendedSlot;
  @override
  final int lastExtendedSlotStartIndex;
  @override
  final Ed25519HDPublicKey? authority;
  final List<Ed25519HDPublicKey> _addresses;
  @override
  List<Ed25519HDPublicKey> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'AddressLookupTableState(deactivationSlot: $deactivationSlot, lastExtendedSlot: $lastExtendedSlot, lastExtendedSlotStartIndex: $lastExtendedSlotStartIndex, authority: $authority, addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressLookupTableStateImpl &&
            (identical(other.deactivationSlot, deactivationSlot) ||
                other.deactivationSlot == deactivationSlot) &&
            (identical(other.lastExtendedSlot, lastExtendedSlot) ||
                other.lastExtendedSlot == lastExtendedSlot) &&
            (identical(other.lastExtendedSlotStartIndex,
                    lastExtendedSlotStartIndex) ||
                other.lastExtendedSlotStartIndex ==
                    lastExtendedSlotStartIndex) &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deactivationSlot,
      lastExtendedSlot,
      lastExtendedSlotStartIndex,
      authority,
      const DeepCollectionEquality().hash(_addresses));

  /// Create a copy of AddressLookupTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressLookupTableStateImplCopyWith<_$AddressLookupTableStateImpl>
      get copyWith => __$$AddressLookupTableStateImplCopyWithImpl<
          _$AddressLookupTableStateImpl>(this, _$identity);
}

abstract class _AddressLookupTableState implements AddressLookupTableState {
  const factory _AddressLookupTableState(
          {required final BigInt deactivationSlot,
          required final int lastExtendedSlot,
          required final int lastExtendedSlotStartIndex,
          required final Ed25519HDPublicKey? authority,
          required final List<Ed25519HDPublicKey> addresses}) =
      _$AddressLookupTableStateImpl;

  @override
  BigInt get deactivationSlot;
  @override
  int get lastExtendedSlot;
  @override
  int get lastExtendedSlotStartIndex;
  @override
  Ed25519HDPublicKey? get authority;
  @override
  List<Ed25519HDPublicKey> get addresses;

  /// Create a copy of AddressLookupTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressLookupTableStateImplCopyWith<_$AddressLookupTableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
