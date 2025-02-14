// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_system_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParsedSystemInstruction _$ParsedSystemInstructionFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'transfer':
      return ParsedSystemTransferInstruction.fromJson(json);
    case 'transferChecked':
      return ParsedSystemTransferCheckedInstruction.fromJson(json);

    default:
      return ParsedSystemUnsupportedInstruction.fromJson(json);
  }
}

/// @nodoc
mixin _$ParsedSystemInstruction {
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transfer,
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transferChecked,
    required TResult Function(String type) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult? Function(String type)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult Function(String type)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInstruction value) transfer,
    required TResult Function(ParsedSystemTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSystemUnsupportedInstruction value)
        unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInstruction value)? transfer,
    TResult? Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSystemUnsupportedInstruction value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInstruction value)? transfer,
    TResult Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSystemUnsupportedInstruction value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ParsedSystemInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedSystemInstructionCopyWith<ParsedSystemInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedSystemInstructionCopyWith<$Res> {
  factory $ParsedSystemInstructionCopyWith(ParsedSystemInstruction value,
          $Res Function(ParsedSystemInstruction) then) =
      _$ParsedSystemInstructionCopyWithImpl<$Res, ParsedSystemInstruction>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$ParsedSystemInstructionCopyWithImpl<$Res,
        $Val extends ParsedSystemInstruction>
    implements $ParsedSystemInstructionCopyWith<$Res> {
  _$ParsedSystemInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedSystemInstruction
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
abstract class _$$ParsedSystemTransferInstructionImplCopyWith<$Res>
    implements $ParsedSystemInstructionCopyWith<$Res> {
  factory _$$ParsedSystemTransferInstructionImplCopyWith(
          _$ParsedSystemTransferInstructionImpl value,
          $Res Function(_$ParsedSystemTransferInstructionImpl) then) =
      __$$ParsedSystemTransferInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParsedSystemTransferInformation info, String type});

  $ParsedSystemTransferInformationCopyWith<$Res> get info;
}

/// @nodoc
class __$$ParsedSystemTransferInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSystemInstructionCopyWithImpl<$Res,
        _$ParsedSystemTransferInstructionImpl>
    implements _$$ParsedSystemTransferInstructionImplCopyWith<$Res> {
  __$$ParsedSystemTransferInstructionImplCopyWithImpl(
      _$ParsedSystemTransferInstructionImpl _value,
      $Res Function(_$ParsedSystemTransferInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
  }) {
    return _then(_$ParsedSystemTransferInstructionImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParsedSystemTransferInformation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedSystemTransferInformationCopyWith<$Res> get info {
    return $ParsedSystemTransferInformationCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSystemTransferInstructionImpl
    implements ParsedSystemTransferInstruction {
  const _$ParsedSystemTransferInstructionImpl(
      {required this.info, required this.type});

  factory _$ParsedSystemTransferInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSystemTransferInstructionImplFromJson(json);

  @override
  final ParsedSystemTransferInformation info;
  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSystemInstruction.transfer(info: $info, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSystemTransferInstructionImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSystemTransferInstructionImplCopyWith<
          _$ParsedSystemTransferInstructionImpl>
      get copyWith => __$$ParsedSystemTransferInstructionImplCopyWithImpl<
          _$ParsedSystemTransferInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transfer,
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transferChecked,
    required TResult Function(String type) unsupported,
  }) {
    return transfer(info, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult? Function(String type)? unsupported,
  }) {
    return transfer?.call(info, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult Function(String type)? unsupported,
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
    required TResult Function(ParsedSystemTransferInstruction value) transfer,
    required TResult Function(ParsedSystemTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSystemUnsupportedInstruction value)
        unsupported,
  }) {
    return transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInstruction value)? transfer,
    TResult? Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSystemUnsupportedInstruction value)? unsupported,
  }) {
    return transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInstruction value)? transfer,
    TResult Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSystemUnsupportedInstruction value)? unsupported,
    required TResult orElse(),
  }) {
    if (transfer != null) {
      return transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSystemTransferInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSystemTransferInstruction
    implements ParsedSystemInstruction {
  const factory ParsedSystemTransferInstruction(
      {required final ParsedSystemTransferInformation info,
      required final String type}) = _$ParsedSystemTransferInstructionImpl;

  factory ParsedSystemTransferInstruction.fromJson(Map<String, dynamic> json) =
      _$ParsedSystemTransferInstructionImpl.fromJson;

  ParsedSystemTransferInformation get info;
  @override
  String get type;

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSystemTransferInstructionImplCopyWith<
          _$ParsedSystemTransferInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSystemTransferCheckedInstructionImplCopyWith<$Res>
    implements $ParsedSystemInstructionCopyWith<$Res> {
  factory _$$ParsedSystemTransferCheckedInstructionImplCopyWith(
          _$ParsedSystemTransferCheckedInstructionImpl value,
          $Res Function(_$ParsedSystemTransferCheckedInstructionImpl) then) =
      __$$ParsedSystemTransferCheckedInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ParsedSystemTransferInformation info, String type});

  $ParsedSystemTransferInformationCopyWith<$Res> get info;
}

/// @nodoc
class __$$ParsedSystemTransferCheckedInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSystemInstructionCopyWithImpl<$Res,
        _$ParsedSystemTransferCheckedInstructionImpl>
    implements _$$ParsedSystemTransferCheckedInstructionImplCopyWith<$Res> {
  __$$ParsedSystemTransferCheckedInstructionImplCopyWithImpl(
      _$ParsedSystemTransferCheckedInstructionImpl _value,
      $Res Function(_$ParsedSystemTransferCheckedInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
  }) {
    return _then(_$ParsedSystemTransferCheckedInstructionImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ParsedSystemTransferInformation,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedSystemTransferInformationCopyWith<$Res> get info {
    return $ParsedSystemTransferInformationCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSystemTransferCheckedInstructionImpl
    implements ParsedSystemTransferCheckedInstruction {
  const _$ParsedSystemTransferCheckedInstructionImpl(
      {required this.info, required this.type});

  factory _$ParsedSystemTransferCheckedInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSystemTransferCheckedInstructionImplFromJson(json);

  @override
  final ParsedSystemTransferInformation info;
  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSystemInstruction.transferChecked(info: $info, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSystemTransferCheckedInstructionImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSystemTransferCheckedInstructionImplCopyWith<
          _$ParsedSystemTransferCheckedInstructionImpl>
      get copyWith =>
          __$$ParsedSystemTransferCheckedInstructionImplCopyWithImpl<
              _$ParsedSystemTransferCheckedInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transfer,
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transferChecked,
    required TResult Function(String type) unsupported,
  }) {
    return transferChecked(info, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult? Function(String type)? unsupported,
  }) {
    return transferChecked?.call(info, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult Function(String type)? unsupported,
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
    required TResult Function(ParsedSystemTransferInstruction value) transfer,
    required TResult Function(ParsedSystemTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSystemUnsupportedInstruction value)
        unsupported,
  }) {
    return transferChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInstruction value)? transfer,
    TResult? Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSystemUnsupportedInstruction value)? unsupported,
  }) {
    return transferChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInstruction value)? transfer,
    TResult Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSystemUnsupportedInstruction value)? unsupported,
    required TResult orElse(),
  }) {
    if (transferChecked != null) {
      return transferChecked(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSystemTransferCheckedInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSystemTransferCheckedInstruction
    implements ParsedSystemInstruction {
  const factory ParsedSystemTransferCheckedInstruction(
          {required final ParsedSystemTransferInformation info,
          required final String type}) =
      _$ParsedSystemTransferCheckedInstructionImpl;

  factory ParsedSystemTransferCheckedInstruction.fromJson(
          Map<String, dynamic> json) =
      _$ParsedSystemTransferCheckedInstructionImpl.fromJson;

  ParsedSystemTransferInformation get info;
  @override
  String get type;

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSystemTransferCheckedInstructionImplCopyWith<
          _$ParsedSystemTransferCheckedInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedSystemUnsupportedInstructionImplCopyWith<$Res>
    implements $ParsedSystemInstructionCopyWith<$Res> {
  factory _$$ParsedSystemUnsupportedInstructionImplCopyWith(
          _$ParsedSystemUnsupportedInstructionImpl value,
          $Res Function(_$ParsedSystemUnsupportedInstructionImpl) then) =
      __$$ParsedSystemUnsupportedInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ParsedSystemUnsupportedInstructionImplCopyWithImpl<$Res>
    extends _$ParsedSystemInstructionCopyWithImpl<$Res,
        _$ParsedSystemUnsupportedInstructionImpl>
    implements _$$ParsedSystemUnsupportedInstructionImplCopyWith<$Res> {
  __$$ParsedSystemUnsupportedInstructionImplCopyWithImpl(
      _$ParsedSystemUnsupportedInstructionImpl _value,
      $Res Function(_$ParsedSystemUnsupportedInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ParsedSystemUnsupportedInstructionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSystemUnsupportedInstructionImpl
    implements ParsedSystemUnsupportedInstruction {
  const _$ParsedSystemUnsupportedInstructionImpl({required this.type});

  factory _$ParsedSystemUnsupportedInstructionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSystemUnsupportedInstructionImplFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'ParsedSystemInstruction.unsupported(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSystemUnsupportedInstructionImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSystemUnsupportedInstructionImplCopyWith<
          _$ParsedSystemUnsupportedInstructionImpl>
      get copyWith => __$$ParsedSystemUnsupportedInstructionImplCopyWithImpl<
          _$ParsedSystemUnsupportedInstructionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transfer,
    required TResult Function(ParsedSystemTransferInformation info, String type)
        transferChecked,
    required TResult Function(String type) unsupported,
  }) {
    return unsupported(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult? Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult? Function(String type)? unsupported,
  }) {
    return unsupported?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transfer,
    TResult Function(ParsedSystemTransferInformation info, String type)?
        transferChecked,
    TResult Function(String type)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSystemTransferInstruction value) transfer,
    required TResult Function(ParsedSystemTransferCheckedInstruction value)
        transferChecked,
    required TResult Function(ParsedSystemUnsupportedInstruction value)
        unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedSystemTransferInstruction value)? transfer,
    TResult? Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult? Function(ParsedSystemUnsupportedInstruction value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSystemTransferInstruction value)? transfer,
    TResult Function(ParsedSystemTransferCheckedInstruction value)?
        transferChecked,
    TResult Function(ParsedSystemUnsupportedInstruction value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSystemUnsupportedInstructionImplToJson(
      this,
    );
  }
}

abstract class ParsedSystemUnsupportedInstruction
    implements ParsedSystemInstruction {
  const factory ParsedSystemUnsupportedInstruction(
      {required final String type}) = _$ParsedSystemUnsupportedInstructionImpl;

  factory ParsedSystemUnsupportedInstruction.fromJson(
          Map<String, dynamic> json) =
      _$ParsedSystemUnsupportedInstructionImpl.fromJson;

  @override
  String get type;

  /// Create a copy of ParsedSystemInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSystemUnsupportedInstructionImplCopyWith<
          _$ParsedSystemUnsupportedInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParsedSystemTransferInformation _$ParsedSystemTransferInformationFromJson(
    Map<String, dynamic> json) {
  return _ParsedSystemTransferInformation.fromJson(json);
}

/// @nodoc
mixin _$ParsedSystemTransferInformation {
  int get lamports => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;

  /// Serializes this ParsedSystemTransferInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParsedSystemTransferInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParsedSystemTransferInformationCopyWith<ParsedSystemTransferInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedSystemTransferInformationCopyWith<$Res> {
  factory $ParsedSystemTransferInformationCopyWith(
          ParsedSystemTransferInformation value,
          $Res Function(ParsedSystemTransferInformation) then) =
      _$ParsedSystemTransferInformationCopyWithImpl<$Res,
          ParsedSystemTransferInformation>;
  @useResult
  $Res call({int lamports, String source, String destination});
}

/// @nodoc
class _$ParsedSystemTransferInformationCopyWithImpl<$Res,
        $Val extends ParsedSystemTransferInformation>
    implements $ParsedSystemTransferInformationCopyWith<$Res> {
  _$ParsedSystemTransferInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedSystemTransferInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lamports = null,
    Object? source = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      lamports: null == lamports
          ? _value.lamports
          : lamports // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedSystemTransferInformationImplCopyWith<$Res>
    implements $ParsedSystemTransferInformationCopyWith<$Res> {
  factory _$$ParsedSystemTransferInformationImplCopyWith(
          _$ParsedSystemTransferInformationImpl value,
          $Res Function(_$ParsedSystemTransferInformationImpl) then) =
      __$$ParsedSystemTransferInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int lamports, String source, String destination});
}

/// @nodoc
class __$$ParsedSystemTransferInformationImplCopyWithImpl<$Res>
    extends _$ParsedSystemTransferInformationCopyWithImpl<$Res,
        _$ParsedSystemTransferInformationImpl>
    implements _$$ParsedSystemTransferInformationImplCopyWith<$Res> {
  __$$ParsedSystemTransferInformationImplCopyWithImpl(
      _$ParsedSystemTransferInformationImpl _value,
      $Res Function(_$ParsedSystemTransferInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedSystemTransferInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lamports = null,
    Object? source = null,
    Object? destination = null,
  }) {
    return _then(_$ParsedSystemTransferInformationImpl(
      lamports: null == lamports
          ? _value.lamports
          : lamports // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedSystemTransferInformationImpl
    implements _ParsedSystemTransferInformation {
  const _$ParsedSystemTransferInformationImpl(
      {required this.lamports,
      required this.source,
      required this.destination});

  factory _$ParsedSystemTransferInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSystemTransferInformationImplFromJson(json);

  @override
  final int lamports;
  @override
  final String source;
  @override
  final String destination;

  @override
  String toString() {
    return 'ParsedSystemTransferInformation(lamports: $lamports, source: $source, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedSystemTransferInformationImpl &&
            (identical(other.lamports, lamports) ||
                other.lamports == lamports) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lamports, source, destination);

  /// Create a copy of ParsedSystemTransferInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedSystemTransferInformationImplCopyWith<
          _$ParsedSystemTransferInformationImpl>
      get copyWith => __$$ParsedSystemTransferInformationImplCopyWithImpl<
          _$ParsedSystemTransferInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSystemTransferInformationImplToJson(
      this,
    );
  }
}

abstract class _ParsedSystemTransferInformation
    implements ParsedSystemTransferInformation {
  const factory _ParsedSystemTransferInformation(
          {required final int lamports,
          required final String source,
          required final String destination}) =
      _$ParsedSystemTransferInformationImpl;

  factory _ParsedSystemTransferInformation.fromJson(Map<String, dynamic> json) =
      _$ParsedSystemTransferInformationImpl.fromJson;

  @override
  int get lamports;
  @override
  String get source;
  @override
  String get destination;

  /// Create a copy of ParsedSystemTransferInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedSystemTransferInformationImplCopyWith<
          _$ParsedSystemTransferInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
