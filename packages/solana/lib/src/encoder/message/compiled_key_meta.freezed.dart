// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compiled_key_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompiledKeyMeta {
  bool get isSigner => throw _privateConstructorUsedError;
  bool get isWritable => throw _privateConstructorUsedError;
  bool get isInvoked => throw _privateConstructorUsedError;

  /// Create a copy of CompiledKeyMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompiledKeyMetaCopyWith<CompiledKeyMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompiledKeyMetaCopyWith<$Res> {
  factory $CompiledKeyMetaCopyWith(
          CompiledKeyMeta value, $Res Function(CompiledKeyMeta) then) =
      _$CompiledKeyMetaCopyWithImpl<$Res, CompiledKeyMeta>;
  @useResult
  $Res call({bool isSigner, bool isWritable, bool isInvoked});
}

/// @nodoc
class _$CompiledKeyMetaCopyWithImpl<$Res, $Val extends CompiledKeyMeta>
    implements $CompiledKeyMetaCopyWith<$Res> {
  _$CompiledKeyMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompiledKeyMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigner = null,
    Object? isWritable = null,
    Object? isInvoked = null,
  }) {
    return _then(_value.copyWith(
      isSigner: null == isSigner
          ? _value.isSigner
          : isSigner // ignore: cast_nullable_to_non_nullable
              as bool,
      isWritable: null == isWritable
          ? _value.isWritable
          : isWritable // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvoked: null == isInvoked
          ? _value.isInvoked
          : isInvoked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompiledKeyMetaImplCopyWith<$Res>
    implements $CompiledKeyMetaCopyWith<$Res> {
  factory _$$CompiledKeyMetaImplCopyWith(_$CompiledKeyMetaImpl value,
          $Res Function(_$CompiledKeyMetaImpl) then) =
      __$$CompiledKeyMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSigner, bool isWritable, bool isInvoked});
}

/// @nodoc
class __$$CompiledKeyMetaImplCopyWithImpl<$Res>
    extends _$CompiledKeyMetaCopyWithImpl<$Res, _$CompiledKeyMetaImpl>
    implements _$$CompiledKeyMetaImplCopyWith<$Res> {
  __$$CompiledKeyMetaImplCopyWithImpl(
      _$CompiledKeyMetaImpl _value, $Res Function(_$CompiledKeyMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompiledKeyMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigner = null,
    Object? isWritable = null,
    Object? isInvoked = null,
  }) {
    return _then(_$CompiledKeyMetaImpl(
      isSigner: null == isSigner
          ? _value.isSigner
          : isSigner // ignore: cast_nullable_to_non_nullable
              as bool,
      isWritable: null == isWritable
          ? _value.isWritable
          : isWritable // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvoked: null == isInvoked
          ? _value.isInvoked
          : isInvoked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompiledKeyMetaImpl implements _CompiledKeyMeta {
  const _$CompiledKeyMetaImpl(
      {required this.isSigner,
      required this.isWritable,
      required this.isInvoked});

  @override
  final bool isSigner;
  @override
  final bool isWritable;
  @override
  final bool isInvoked;

  @override
  String toString() {
    return 'CompiledKeyMeta(isSigner: $isSigner, isWritable: $isWritable, isInvoked: $isInvoked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompiledKeyMetaImpl &&
            (identical(other.isSigner, isSigner) ||
                other.isSigner == isSigner) &&
            (identical(other.isWritable, isWritable) ||
                other.isWritable == isWritable) &&
            (identical(other.isInvoked, isInvoked) ||
                other.isInvoked == isInvoked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSigner, isWritable, isInvoked);

  /// Create a copy of CompiledKeyMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompiledKeyMetaImplCopyWith<_$CompiledKeyMetaImpl> get copyWith =>
      __$$CompiledKeyMetaImplCopyWithImpl<_$CompiledKeyMetaImpl>(
          this, _$identity);
}

abstract class _CompiledKeyMeta implements CompiledKeyMeta {
  const factory _CompiledKeyMeta(
      {required final bool isSigner,
      required final bool isWritable,
      required final bool isInvoked}) = _$CompiledKeyMetaImpl;

  @override
  bool get isSigner;
  @override
  bool get isWritable;
  @override
  bool get isInvoked;

  /// Create a copy of CompiledKeyMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompiledKeyMetaImplCopyWith<_$CompiledKeyMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
