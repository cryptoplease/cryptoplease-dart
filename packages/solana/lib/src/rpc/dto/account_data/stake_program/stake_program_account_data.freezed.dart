// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake_program_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StakeProgramAccountData _$StakeProgramAccountDataFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'delegated':
      return StakeProgramDelegatedAccountData.fromJson(json);
    case 'initialize':
      return StakeProgramInitializedAccountData.fromJson(json);

    default:
      return StakeProgramUnknownAccountData.fromJson(json);
  }
}

/// @nodoc
mixin _$StakeProgramAccountData {
  Object get info => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeDelegatedAccountInfo info) delegated,
    required TResult Function(StakeInitializedAccountInfo info) initialize,
    required TResult Function(Map<String, dynamic> info) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeDelegatedAccountInfo info)? delegated,
    TResult? Function(StakeInitializedAccountInfo info)? initialize,
    TResult? Function(Map<String, dynamic> info)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeDelegatedAccountInfo info)? delegated,
    TResult Function(StakeInitializedAccountInfo info)? initialize,
    TResult Function(Map<String, dynamic> info)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StakeProgramDelegatedAccountData value) delegated,
    required TResult Function(StakeProgramInitializedAccountData value)
        initialize,
    required TResult Function(StakeProgramUnknownAccountData value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult? Function(StakeProgramInitializedAccountData value)? initialize,
    TResult? Function(StakeProgramUnknownAccountData value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult Function(StakeProgramInitializedAccountData value)? initialize,
    TResult Function(StakeProgramUnknownAccountData value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this StakeProgramAccountData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeProgramAccountDataCopyWith<$Res> {
  factory $StakeProgramAccountDataCopyWith(StakeProgramAccountData value,
          $Res Function(StakeProgramAccountData) then) =
      _$StakeProgramAccountDataCopyWithImpl<$Res, StakeProgramAccountData>;
}

/// @nodoc
class _$StakeProgramAccountDataCopyWithImpl<$Res,
        $Val extends StakeProgramAccountData>
    implements $StakeProgramAccountDataCopyWith<$Res> {
  _$StakeProgramAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StakeProgramDelegatedAccountDataImplCopyWith<$Res> {
  factory _$$StakeProgramDelegatedAccountDataImplCopyWith(
          _$StakeProgramDelegatedAccountDataImpl value,
          $Res Function(_$StakeProgramDelegatedAccountDataImpl) then) =
      __$$StakeProgramDelegatedAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeDelegatedAccountInfo info});
}

/// @nodoc
class __$$StakeProgramDelegatedAccountDataImplCopyWithImpl<$Res>
    extends _$StakeProgramAccountDataCopyWithImpl<$Res,
        _$StakeProgramDelegatedAccountDataImpl>
    implements _$$StakeProgramDelegatedAccountDataImplCopyWith<$Res> {
  __$$StakeProgramDelegatedAccountDataImplCopyWithImpl(
      _$StakeProgramDelegatedAccountDataImpl _value,
      $Res Function(_$StakeProgramDelegatedAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$StakeProgramDelegatedAccountDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as StakeDelegatedAccountInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeProgramDelegatedAccountDataImpl
    implements StakeProgramDelegatedAccountData {
  const _$StakeProgramDelegatedAccountDataImpl(
      {required this.info, final String? $type})
      : $type = $type ?? 'delegated';

  factory _$StakeProgramDelegatedAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StakeProgramDelegatedAccountDataImplFromJson(json);

  @override
  final StakeDelegatedAccountInfo info;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StakeProgramAccountData.delegated(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeProgramDelegatedAccountDataImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeProgramDelegatedAccountDataImplCopyWith<
          _$StakeProgramDelegatedAccountDataImpl>
      get copyWith => __$$StakeProgramDelegatedAccountDataImplCopyWithImpl<
          _$StakeProgramDelegatedAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeDelegatedAccountInfo info) delegated,
    required TResult Function(StakeInitializedAccountInfo info) initialize,
    required TResult Function(Map<String, dynamic> info) unknown,
  }) {
    return delegated(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeDelegatedAccountInfo info)? delegated,
    TResult? Function(StakeInitializedAccountInfo info)? initialize,
    TResult? Function(Map<String, dynamic> info)? unknown,
  }) {
    return delegated?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeDelegatedAccountInfo info)? delegated,
    TResult Function(StakeInitializedAccountInfo info)? initialize,
    TResult Function(Map<String, dynamic> info)? unknown,
    required TResult orElse(),
  }) {
    if (delegated != null) {
      return delegated(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StakeProgramDelegatedAccountData value) delegated,
    required TResult Function(StakeProgramInitializedAccountData value)
        initialize,
    required TResult Function(StakeProgramUnknownAccountData value) unknown,
  }) {
    return delegated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult? Function(StakeProgramInitializedAccountData value)? initialize,
    TResult? Function(StakeProgramUnknownAccountData value)? unknown,
  }) {
    return delegated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult Function(StakeProgramInitializedAccountData value)? initialize,
    TResult Function(StakeProgramUnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (delegated != null) {
      return delegated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeProgramDelegatedAccountDataImplToJson(
      this,
    );
  }
}

abstract class StakeProgramDelegatedAccountData
    implements StakeProgramAccountData {
  const factory StakeProgramDelegatedAccountData(
          {required final StakeDelegatedAccountInfo info}) =
      _$StakeProgramDelegatedAccountDataImpl;

  factory StakeProgramDelegatedAccountData.fromJson(Map<String, dynamic> json) =
      _$StakeProgramDelegatedAccountDataImpl.fromJson;

  @override
  StakeDelegatedAccountInfo get info;

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakeProgramDelegatedAccountDataImplCopyWith<
          _$StakeProgramDelegatedAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeProgramInitializedAccountDataImplCopyWith<$Res> {
  factory _$$StakeProgramInitializedAccountDataImplCopyWith(
          _$StakeProgramInitializedAccountDataImpl value,
          $Res Function(_$StakeProgramInitializedAccountDataImpl) then) =
      __$$StakeProgramInitializedAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StakeInitializedAccountInfo info});
}

/// @nodoc
class __$$StakeProgramInitializedAccountDataImplCopyWithImpl<$Res>
    extends _$StakeProgramAccountDataCopyWithImpl<$Res,
        _$StakeProgramInitializedAccountDataImpl>
    implements _$$StakeProgramInitializedAccountDataImplCopyWith<$Res> {
  __$$StakeProgramInitializedAccountDataImplCopyWithImpl(
      _$StakeProgramInitializedAccountDataImpl _value,
      $Res Function(_$StakeProgramInitializedAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$StakeProgramInitializedAccountDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as StakeInitializedAccountInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeProgramInitializedAccountDataImpl
    implements StakeProgramInitializedAccountData {
  const _$StakeProgramInitializedAccountDataImpl(
      {required this.info, final String? $type})
      : $type = $type ?? 'initialize';

  factory _$StakeProgramInitializedAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StakeProgramInitializedAccountDataImplFromJson(json);

  @override
  final StakeInitializedAccountInfo info;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StakeProgramAccountData.initialize(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeProgramInitializedAccountDataImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeProgramInitializedAccountDataImplCopyWith<
          _$StakeProgramInitializedAccountDataImpl>
      get copyWith => __$$StakeProgramInitializedAccountDataImplCopyWithImpl<
          _$StakeProgramInitializedAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeDelegatedAccountInfo info) delegated,
    required TResult Function(StakeInitializedAccountInfo info) initialize,
    required TResult Function(Map<String, dynamic> info) unknown,
  }) {
    return initialize(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeDelegatedAccountInfo info)? delegated,
    TResult? Function(StakeInitializedAccountInfo info)? initialize,
    TResult? Function(Map<String, dynamic> info)? unknown,
  }) {
    return initialize?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeDelegatedAccountInfo info)? delegated,
    TResult Function(StakeInitializedAccountInfo info)? initialize,
    TResult Function(Map<String, dynamic> info)? unknown,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StakeProgramDelegatedAccountData value) delegated,
    required TResult Function(StakeProgramInitializedAccountData value)
        initialize,
    required TResult Function(StakeProgramUnknownAccountData value) unknown,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult? Function(StakeProgramInitializedAccountData value)? initialize,
    TResult? Function(StakeProgramUnknownAccountData value)? unknown,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult Function(StakeProgramInitializedAccountData value)? initialize,
    TResult Function(StakeProgramUnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeProgramInitializedAccountDataImplToJson(
      this,
    );
  }
}

abstract class StakeProgramInitializedAccountData
    implements StakeProgramAccountData {
  const factory StakeProgramInitializedAccountData(
          {required final StakeInitializedAccountInfo info}) =
      _$StakeProgramInitializedAccountDataImpl;

  factory StakeProgramInitializedAccountData.fromJson(
          Map<String, dynamic> json) =
      _$StakeProgramInitializedAccountDataImpl.fromJson;

  @override
  StakeInitializedAccountInfo get info;

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakeProgramInitializedAccountDataImplCopyWith<
          _$StakeProgramInitializedAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeProgramUnknownAccountDataImplCopyWith<$Res> {
  factory _$$StakeProgramUnknownAccountDataImplCopyWith(
          _$StakeProgramUnknownAccountDataImpl value,
          $Res Function(_$StakeProgramUnknownAccountDataImpl) then) =
      __$$StakeProgramUnknownAccountDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> info});
}

/// @nodoc
class __$$StakeProgramUnknownAccountDataImplCopyWithImpl<$Res>
    extends _$StakeProgramAccountDataCopyWithImpl<$Res,
        _$StakeProgramUnknownAccountDataImpl>
    implements _$$StakeProgramUnknownAccountDataImplCopyWith<$Res> {
  __$$StakeProgramUnknownAccountDataImplCopyWithImpl(
      _$StakeProgramUnknownAccountDataImpl _value,
      $Res Function(_$StakeProgramUnknownAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$StakeProgramUnknownAccountDataImpl(
      null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeProgramUnknownAccountDataImpl
    implements StakeProgramUnknownAccountData {
  const _$StakeProgramUnknownAccountDataImpl(final Map<String, dynamic> info,
      {final String? $type})
      : _info = info,
        $type = $type ?? 'unknown';

  factory _$StakeProgramUnknownAccountDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StakeProgramUnknownAccountDataImplFromJson(json);

  final Map<String, dynamic> _info;
  @override
  Map<String, dynamic> get info {
    if (_info is EqualUnmodifiableMapView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_info);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'StakeProgramAccountData.unknown(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeProgramUnknownAccountDataImpl &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_info));

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeProgramUnknownAccountDataImplCopyWith<
          _$StakeProgramUnknownAccountDataImpl>
      get copyWith => __$$StakeProgramUnknownAccountDataImplCopyWithImpl<
          _$StakeProgramUnknownAccountDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StakeDelegatedAccountInfo info) delegated,
    required TResult Function(StakeInitializedAccountInfo info) initialize,
    required TResult Function(Map<String, dynamic> info) unknown,
  }) {
    return unknown(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StakeDelegatedAccountInfo info)? delegated,
    TResult? Function(StakeInitializedAccountInfo info)? initialize,
    TResult? Function(Map<String, dynamic> info)? unknown,
  }) {
    return unknown?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StakeDelegatedAccountInfo info)? delegated,
    TResult Function(StakeInitializedAccountInfo info)? initialize,
    TResult Function(Map<String, dynamic> info)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StakeProgramDelegatedAccountData value) delegated,
    required TResult Function(StakeProgramInitializedAccountData value)
        initialize,
    required TResult Function(StakeProgramUnknownAccountData value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult? Function(StakeProgramInitializedAccountData value)? initialize,
    TResult? Function(StakeProgramUnknownAccountData value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StakeProgramDelegatedAccountData value)? delegated,
    TResult Function(StakeProgramInitializedAccountData value)? initialize,
    TResult Function(StakeProgramUnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeProgramUnknownAccountDataImplToJson(
      this,
    );
  }
}

abstract class StakeProgramUnknownAccountData
    implements StakeProgramAccountData {
  const factory StakeProgramUnknownAccountData(
      final Map<String, dynamic> info) = _$StakeProgramUnknownAccountDataImpl;

  factory StakeProgramUnknownAccountData.fromJson(Map<String, dynamic> json) =
      _$StakeProgramUnknownAccountDataImpl.fromJson;

  @override
  Map<String, dynamic> get info;

  /// Create a copy of StakeProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakeProgramUnknownAccountDataImplCopyWith<
          _$StakeProgramUnknownAccountDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
