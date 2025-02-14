// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_spl_token_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParsedSplTokenInstruction _$ParsedSplTokenInstructionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'transfer':
      return ParsedSplTokenTransferInstruction.fromJson(json);
    case 'transferChecked':
      return ParsedSplTokenTransferCheckedInstruction.fromJson(json);

    default:
      return ParsedSplTokenGenericInstruction.fromJson(json);
  }
}

/// @nodoc
mixin _$ParsedSplTokenInstruction {
  dynamic get info => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenTransferInfo info, String type) transfer,
    required TResult Function(SplTokenTransferCheckedInfo info, String type)
        transferChecked,
    required TResult Function(dynamic info, String type) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenTransferInfo info, String type)? transfer,
    TResult? Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult? Function(dynamic info, String type)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenTransferInfo info, String type)? transfer,
    TResult Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult Function(dynamic info, String type)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenTransferInstruction value) transfer,
    required TResult Function(ParsedSplTokenTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSplTokenGenericInstruction value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult? Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSplTokenGenericInstruction value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSplTokenGenericInstruction value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ParsedSplTokenInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedSplTokenInstructionCopyWith<ParsedSplTokenInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedSplTokenInstructionCopyWith<$Res> {
  factory $ParsedSplTokenInstructionCopyWith(ParsedSplTokenInstruction value,
          $Res Function(ParsedSplTokenInstruction) then) =
      _$ParsedSplTokenInstructionCopyWithImpl<$Res, ParsedSplTokenInstruction>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$ParsedSplTokenInstructionCopyWithImpl<$Res,
        $Val extends ParsedSplTokenInstruction>
    implements $ParsedSplTokenInstructionCopyWith<$Res> {
  _$ParsedSplTokenInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedSplTokenTransferInstructionImplCopyWith<$Res>
    implements $ParsedSplTokenInstructionCopyWith<$Res> {
  factory _$$ParsedSplTokenTransferInstructionImplCopyWith(
          _$ParsedSplTokenTransferInstructionImpl value,
          $Res Function(_$ParsedSplTokenTransferInstructionImpl) then) =
      __$$ParsedSplTokenTransferInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplTokenTransferInfo info, String type});
}

/// @nodoc
class __$$ParsedSplTokenTransferInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSplTokenInstructionCopyWithImpl<$Res,
        _$ParsedSplTokenTransferInstructionImpl>
    implements _$$ParsedSplTokenTransferInstructionImplCopyWith<$Res> {
  __$$ParsedSplTokenTransferInstructionImplCopyWithImpl(
      _$ParsedSplTokenTransferInstructionImpl _value,
      $Res Function(_$ParsedSplTokenTransferInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
  }) {
    return _then(_$ParsedSplTokenTransferInstructionImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SplTokenTransferInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSplTokenTransferInstructionImpl
    implements ParsedSplTokenTransferInstruction {
  const _$ParsedSplTokenTransferInstructionImpl(
      {required this.info, required this.type});

  factory _$ParsedSplTokenTransferInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSplTokenTransferInstructionImplFromJson(json);

  @override
  final SplTokenTransferInfo info;
  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSplTokenInstruction.transfer(info: $info, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSplTokenTransferInstructionImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSplTokenTransferInstructionImplCopyWith<
          _$ParsedSplTokenTransferInstructionImpl>
      get copyWith => __$$ParsedSplTokenTransferInstructionImplCopyWithImpl<
          _$ParsedSplTokenTransferInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenTransferInfo info, String type) transfer,
    required TResult Function(SplTokenTransferCheckedInfo info, String type)
        transferChecked,
    required TResult Function(dynamic info, String type) generic,
  }) {
    return transfer(info, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenTransferInfo info, String type)? transfer,
    TResult? Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult? Function(dynamic info, String type)? generic,
  }) {
    return transfer?.call(info, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenTransferInfo info, String type)? transfer,
    TResult Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult Function(dynamic info, String type)? generic,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(info, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenTransferInstruction value) transfer,
    required TResult Function(ParsedSplTokenTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSplTokenGenericInstruction value) generic,
  }) {
    return transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult? Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSplTokenGenericInstruction value)? generic,
  }) {
    return transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSplTokenGenericInstruction value)? generic,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSplTokenTransferInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSplTokenTransferInstruction
    implements ParsedSplTokenInstruction {
  const factory ParsedSplTokenTransferInstruction(
      {required final SplTokenTransferInfo info,
      required final String type}) = _$ParsedSplTokenTransferInstructionImpl;

  factory ParsedSplTokenTransferInstruction.fromJson(
          Map<String, dynamic> json) =
      _$ParsedSplTokenTransferInstructionImpl.fromJson;

  @override
  SplTokenTransferInfo get info;
  @override
  String get type;

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSplTokenTransferInstructionImplCopyWith<
          _$ParsedSplTokenTransferInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSplTokenTransferCheckedInstructionImplCopyWith<$Res>
    implements $ParsedSplTokenInstructionCopyWith<$Res> {
  factory _$$ParsedSplTokenTransferCheckedInstructionImplCopyWith(
          _$ParsedSplTokenTransferCheckedInstructionImpl value,
          $Res Function(_$ParsedSplTokenTransferCheckedInstructionImpl) then) =
      __$$ParsedSplTokenTransferCheckedInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplTokenTransferCheckedInfo info, String type});
}

/// @nodoc
class __$$ParsedSplTokenTransferCheckedInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSplTokenInstructionCopyWithImpl<$Res,
        _$ParsedSplTokenTransferCheckedInstructionImpl>
    implements _$$ParsedSplTokenTransferCheckedInstructionImplCopyWith<$Res> {
  __$$ParsedSplTokenTransferCheckedInstructionImplCopyWithImpl(
      _$ParsedSplTokenTransferCheckedInstructionImpl _value,
      $Res Function(_$ParsedSplTokenTransferCheckedInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
  }) {
    return _then(_$ParsedSplTokenTransferCheckedInstructionImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SplTokenTransferCheckedInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSplTokenTransferCheckedInstructionImpl
    implements ParsedSplTokenTransferCheckedInstruction {
  const _$ParsedSplTokenTransferCheckedInstructionImpl(
      {required this.info, required this.type});

  factory _$ParsedSplTokenTransferCheckedInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSplTokenTransferCheckedInstructionImplFromJson(json);

  @override
  final SplTokenTransferCheckedInfo info;
  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSplTokenInstruction.transferChecked(info: $info, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSplTokenTransferCheckedInstructionImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSplTokenTransferCheckedInstructionImplCopyWith<
          _$ParsedSplTokenTransferCheckedInstructionImpl>
      get copyWith =>
          __$$ParsedSplTokenTransferCheckedInstructionImplCopyWithImpl<
              _$ParsedSplTokenTransferCheckedInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenTransferInfo info, String type) transfer,
    required TResult Function(SplTokenTransferCheckedInfo info, String type)
        transferChecked,
    required TResult Function(dynamic info, String type) generic,
  }) {
    return transferChecked(info, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenTransferInfo info, String type)? transfer,
    TResult? Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult? Function(dynamic info, String type)? generic,
  }) {
    return transferChecked?.call(info, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenTransferInfo info, String type)? transfer,
    TResult Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult Function(dynamic info, String type)? generic,
    required TResult orElse(),
  }) {
    if (transferChecked != null) {
      return transferChecked(info, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenTransferInstruction value) transfer,
    required TResult Function(ParsedSplTokenTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSplTokenGenericInstruction value) generic,
  }) {
    return transferChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult? Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSplTokenGenericInstruction value)? generic,
  }) {
    return transferChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSplTokenGenericInstruction value)? generic,
    required TResult orElse(),
  }) {
    if (transferChecked != null) {
      return transferChecked(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSplTokenTransferCheckedInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSplTokenTransferCheckedInstruction
    implements ParsedSplTokenInstruction {
  const factory ParsedSplTokenTransferCheckedInstruction(
          {required final SplTokenTransferCheckedInfo info,
          required final String type}) =
      _$ParsedSplTokenTransferCheckedInstructionImpl;

  factory ParsedSplTokenTransferCheckedInstruction.fromJson(
          Map<String, dynamic> json) =
      _$ParsedSplTokenTransferCheckedInstructionImpl.fromJson;

  @override
  SplTokenTransferCheckedInfo get info;
  @override
  String get type;

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSplTokenTransferCheckedInstructionImplCopyWith<
          _$ParsedSplTokenTransferCheckedInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSplTokenGenericInstructionImplCopyWith<$Res>
    implements $ParsedSplTokenInstructionCopyWith<$Res> {
  factory _$$ParsedSplTokenGenericInstructionImplCopyWith(
          _$ParsedSplTokenGenericInstructionImpl value,
          $Res Function(_$ParsedSplTokenGenericInstructionImpl) then) =
      __$$ParsedSplTokenGenericInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic info, String type});
}

/// @nodoc
class __$$ParsedSplTokenGenericInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSplTokenInstructionCopyWithImpl<$Res,
        _$ParsedSplTokenGenericInstructionImpl>
    implements _$$ParsedSplTokenGenericInstructionImplCopyWith<$Res> {
  __$$ParsedSplTokenGenericInstructionImplCopyWithImpl(
      _$ParsedSplTokenGenericInstructionImpl _value,
      $Res Function(_$ParsedSplTokenGenericInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? type = null,
  }) {
    return _then(_$ParsedSplTokenGenericInstructionImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSplTokenGenericInstructionImpl
    implements ParsedSplTokenGenericInstruction {
  const _$ParsedSplTokenGenericInstructionImpl(
      {required this.info, required this.type});

  factory _$ParsedSplTokenGenericInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSplTokenGenericInstructionImplFromJson(json);

  @override
  final dynamic info;
  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSplTokenInstruction.generic(info: $info, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSplTokenGenericInstructionImpl &&
            const DeepCollectionEquality().equals(other.info, info) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(info), type);

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSplTokenGenericInstructionImplCopyWith<
          _$ParsedSplTokenGenericInstructionImpl>
      get copyWith => __$$ParsedSplTokenGenericInstructionImplCopyWithImpl<
          _$ParsedSplTokenGenericInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenTransferInfo info, String type) transfer,
    required TResult Function(SplTokenTransferCheckedInfo info, String type)
        transferChecked,
    required TResult Function(dynamic info, String type) generic,
  }) {
    return generic(info, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplTokenTransferInfo info, String type)? transfer,
    TResult? Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult? Function(dynamic info, String type)? generic,
  }) {
    return generic?.call(info, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenTransferInfo info, String type)? transfer,
    TResult Function(SplTokenTransferCheckedInfo info, String type)?
        transferChecked,
    TResult Function(dynamic info, String type)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(info, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenTransferInstruction value) transfer,
    required TResult Function(ParsedSplTokenTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSplTokenGenericInstruction value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult? Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSplTokenGenericInstruction value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenTransferInstruction value)? transfer,
    TResult Function(ParsedSplTokenTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSplTokenGenericInstruction value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSplTokenGenericInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSplTokenGenericInstruction
    implements ParsedSplTokenInstruction {
  const factory ParsedSplTokenGenericInstruction(
      {required final dynamic info,
      required final String type}) = _$ParsedSplTokenGenericInstructionImpl;

  factory ParsedSplTokenGenericInstruction.fromJson(Map<String, dynamic> json) =
      _$ParsedSplTokenGenericInstructionImpl.fromJson;

  @override
  dynamic get info;
  @override
  String get type;

  /// Create a copy of ParsedSplTokenInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSplTokenGenericInstructionImplCopyWith<
          _$ParsedSplTokenGenericInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
