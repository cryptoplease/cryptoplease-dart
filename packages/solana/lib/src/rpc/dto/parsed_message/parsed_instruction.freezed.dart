// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParsedInstruction _$ParsedInstructionFromJson(Map<String, dynamic> json) {
  switch (json['program']) {
    case 'system':
      return ParsedInstructionSystem.fromJson(json);
    case 'spl-token':
      return ParsedInstructionSplToken.fromJson(json);
    case 'spl-memo':
      return ParsedInstructionMemo.fromJson(json);

    default:
      return ParsedInstructionUnsupported.fromJson(json);
  }
}

/// @nodoc
mixin _$ParsedInstruction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId, ParsedSystemInstruction parsed)
        system,
    required TResult Function(ParsedSplTokenInstruction parsed) splToken,
    required TResult Function(@JsonKey(name: 'parsed') String? memo) memo,
    required TResult Function(String? program) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult? Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult? Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult? Function(String? program)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult Function(String? program)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedInstructionSystem value) system,
    required TResult Function(ParsedInstructionSplToken value) splToken,
    required TResult Function(ParsedInstructionMemo value) memo,
    required TResult Function(ParsedInstructionUnsupported value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedInstructionSystem value)? system,
    TResult? Function(ParsedInstructionSplToken value)? splToken,
    TResult? Function(ParsedInstructionMemo value)? memo,
    TResult? Function(ParsedInstructionUnsupported value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedInstructionSystem value)? system,
    TResult Function(ParsedInstructionSplToken value)? splToken,
    TResult Function(ParsedInstructionMemo value)? memo,
    TResult Function(ParsedInstructionUnsupported value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ParsedInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedInstructionCopyWith<$Res> {
  factory $ParsedInstructionCopyWith(
          ParsedInstruction value, $Res Function(ParsedInstruction) then) =
      _$ParsedInstructionCopyWithImpl<$Res, ParsedInstruction>;
}

/// @nodoc
class _$ParsedInstructionCopyWithImpl<$Res, $Val extends ParsedInstruction>
    implements $ParsedInstructionCopyWith<$Res> {
  _$ParsedInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ParsedInstructionSystemImplCopyWith<$Res> {
  factory _$$ParsedInstructionSystemImplCopyWith(
          _$ParsedInstructionSystemImpl value,
          $Res Function(_$ParsedInstructionSystemImpl) then) =
      __$$ParsedInstructionSystemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String programId, ParsedSystemInstruction parsed});

  $ParsedSystemInstructionCopyWith<$Res> get parsed;
}

/// @nodoc
class __$$ParsedInstructionSystemImplCopyWithImpl<$Res>
    extends _$ParsedInstructionCopyWithImpl<$Res, _$ParsedInstructionSystemImpl>
    implements _$$ParsedInstructionSystemImplCopyWith<$Res> {
  __$$ParsedInstructionSystemImplCopyWithImpl(
      _$ParsedInstructionSystemImpl _value,
      $Res Function(_$ParsedInstructionSystemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? parsed = null,
  }) {
    return _then(_$ParsedInstructionSystemImpl(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      parsed: null == parsed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as ParsedSystemInstruction,
    ));
  }

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedSystemInstructionCopyWith<$Res> get parsed {
    return $ParsedSystemInstructionCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedInstructionSystemImpl implements ParsedInstructionSystem {
  const _$ParsedInstructionSystemImpl(
      {required this.programId, required this.parsed, final String? $type})
      : $type = $type ?? 'system';

  factory _$ParsedInstructionSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParsedInstructionSystemImplFromJson(json);

  @override
  final String programId;
  @override
  final ParsedSystemInstruction parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedInstruction.system(programId: $programId, parsed: $parsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedInstructionSystemImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.parsed, parsed) || other.parsed == parsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, programId, parsed);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedInstructionSystemImplCopyWith<_$ParsedInstructionSystemImpl>
      get copyWith => __$$ParsedInstructionSystemImplCopyWithImpl<
          _$ParsedInstructionSystemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId, ParsedSystemInstruction parsed)
        system,
    required TResult Function(ParsedSplTokenInstruction parsed) splToken,
    required TResult Function(@JsonKey(name: 'parsed') String? memo) memo,
    required TResult Function(String? program) unsupported,
  }) {
    return system(programId, parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult? Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult? Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult? Function(String? program)? unsupported,
  }) {
    return system?.call(programId, parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult Function(String? program)? unsupported,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(programId, parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedInstructionSystem value) system,
    required TResult Function(ParsedInstructionSplToken value) splToken,
    required TResult Function(ParsedInstructionMemo value) memo,
    required TResult Function(ParsedInstructionUnsupported value) unsupported,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedInstructionSystem value)? system,
    TResult? Function(ParsedInstructionSplToken value)? splToken,
    TResult? Function(ParsedInstructionMemo value)? memo,
    TResult? Function(ParsedInstructionUnsupported value)? unsupported,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedInstructionSystem value)? system,
    TResult Function(ParsedInstructionSplToken value)? splToken,
    TResult Function(ParsedInstructionMemo value)? memo,
    TResult Function(ParsedInstructionUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedInstructionSystemImplToJson(
      this,
    );
  }
}

abstract class ParsedInstructionSystem implements ParsedInstruction {
  const factory ParsedInstructionSystem(
          {required final String programId,
          required final ParsedSystemInstruction parsed}) =
      _$ParsedInstructionSystemImpl;

  factory ParsedInstructionSystem.fromJson(Map<String, dynamic> json) =
      _$ParsedInstructionSystemImpl.fromJson;

  String get programId;
  ParsedSystemInstruction get parsed;

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedInstructionSystemImplCopyWith<_$ParsedInstructionSystemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedInstructionSplTokenImplCopyWith<$Res> {
  factory _$$ParsedInstructionSplTokenImplCopyWith(
          _$ParsedInstructionSplTokenImpl value,
          $Res Function(_$ParsedInstructionSplTokenImpl) then) =
      __$$ParsedInstructionSplTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ParsedSplTokenInstruction parsed});

  $ParsedSplTokenInstructionCopyWith<$Res> get parsed;
}

/// @nodoc
class __$$ParsedInstructionSplTokenImplCopyWithImpl<$Res>
    extends _$ParsedInstructionCopyWithImpl<$Res,
        _$ParsedInstructionSplTokenImpl>
    implements _$$ParsedInstructionSplTokenImplCopyWith<$Res> {
  __$$ParsedInstructionSplTokenImplCopyWithImpl(
      _$ParsedInstructionSplTokenImpl _value,
      $Res Function(_$ParsedInstructionSplTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parsed = null,
  }) {
    return _then(_$ParsedInstructionSplTokenImpl(
      parsed: null == parsed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as ParsedSplTokenInstruction,
    ));
  }

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParsedSplTokenInstructionCopyWith<$Res> get parsed {
    return $ParsedSplTokenInstructionCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedInstructionSplTokenImpl implements ParsedInstructionSplToken {
  const _$ParsedInstructionSplTokenImpl(
      {required this.parsed, final String? $type})
      : $type = $type ?? 'spl-token';

  factory _$ParsedInstructionSplTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParsedInstructionSplTokenImplFromJson(json);

  @override
  final ParsedSplTokenInstruction parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedInstruction.splToken(parsed: $parsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedInstructionSplTokenImpl &&
            (identical(other.parsed, parsed) || other.parsed == parsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parsed);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedInstructionSplTokenImplCopyWith<_$ParsedInstructionSplTokenImpl>
      get copyWith => __$$ParsedInstructionSplTokenImplCopyWithImpl<
          _$ParsedInstructionSplTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId, ParsedSystemInstruction parsed)
        system,
    required TResult Function(ParsedSplTokenInstruction parsed) splToken,
    required TResult Function(@JsonKey(name: 'parsed') String? memo) memo,
    required TResult Function(String? program) unsupported,
  }) {
    return splToken(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult? Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult? Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult? Function(String? program)? unsupported,
  }) {
    return splToken?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult Function(String? program)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedInstructionSystem value) system,
    required TResult Function(ParsedInstructionSplToken value) splToken,
    required TResult Function(ParsedInstructionMemo value) memo,
    required TResult Function(ParsedInstructionUnsupported value) unsupported,
  }) {
    return splToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedInstructionSystem value)? system,
    TResult? Function(ParsedInstructionSplToken value)? splToken,
    TResult? Function(ParsedInstructionMemo value)? memo,
    TResult? Function(ParsedInstructionUnsupported value)? unsupported,
  }) {
    return splToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedInstructionSystem value)? system,
    TResult Function(ParsedInstructionSplToken value)? splToken,
    TResult Function(ParsedInstructionMemo value)? memo,
    TResult Function(ParsedInstructionUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedInstructionSplTokenImplToJson(
      this,
    );
  }
}

abstract class ParsedInstructionSplToken implements ParsedInstruction {
  const factory ParsedInstructionSplToken(
          {required final ParsedSplTokenInstruction parsed}) =
      _$ParsedInstructionSplTokenImpl;

  factory ParsedInstructionSplToken.fromJson(Map<String, dynamic> json) =
      _$ParsedInstructionSplTokenImpl.fromJson;

  ParsedSplTokenInstruction get parsed;

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedInstructionSplTokenImplCopyWith<_$ParsedInstructionSplTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedInstructionMemoImplCopyWith<$Res> {
  factory _$$ParsedInstructionMemoImplCopyWith(
          _$ParsedInstructionMemoImpl value,
          $Res Function(_$ParsedInstructionMemoImpl) then) =
      __$$ParsedInstructionMemoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'parsed') String? memo});
}

/// @nodoc
class __$$ParsedInstructionMemoImplCopyWithImpl<$Res>
    extends _$ParsedInstructionCopyWithImpl<$Res, _$ParsedInstructionMemoImpl>
    implements _$$ParsedInstructionMemoImplCopyWith<$Res> {
  __$$ParsedInstructionMemoImplCopyWithImpl(_$ParsedInstructionMemoImpl _value,
      $Res Function(_$ParsedInstructionMemoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = freezed,
  }) {
    return _then(_$ParsedInstructionMemoImpl(
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedInstructionMemoImpl implements ParsedInstructionMemo {
  const _$ParsedInstructionMemoImpl(
      {@JsonKey(name: 'parsed') required this.memo, final String? $type})
      : $type = $type ?? 'spl-memo';

  factory _$ParsedInstructionMemoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParsedInstructionMemoImplFromJson(json);

// This ignore is needed until https://github.com/dart-lang/linter/issues/2778 is fixed
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'parsed')
  final String? memo;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedInstruction.memo(memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedInstructionMemoImpl &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memo);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedInstructionMemoImplCopyWith<_$ParsedInstructionMemoImpl>
      get copyWith => __$$ParsedInstructionMemoImplCopyWithImpl<
          _$ParsedInstructionMemoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId, ParsedSystemInstruction parsed)
        system,
    required TResult Function(ParsedSplTokenInstruction parsed) splToken,
    required TResult Function(@JsonKey(name: 'parsed') String? memo) memo,
    required TResult Function(String? program) unsupported,
  }) {
    return memo(this.memo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult? Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult? Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult? Function(String? program)? unsupported,
  }) {
    return memo?.call(this.memo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult Function(String? program)? unsupported,
    required TResult orElse(),
  }) {
    if (memo != null) {
      return memo(this.memo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedInstructionSystem value) system,
    required TResult Function(ParsedInstructionSplToken value) splToken,
    required TResult Function(ParsedInstructionMemo value) memo,
    required TResult Function(ParsedInstructionUnsupported value) unsupported,
  }) {
    return memo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedInstructionSystem value)? system,
    TResult? Function(ParsedInstructionSplToken value)? splToken,
    TResult? Function(ParsedInstructionMemo value)? memo,
    TResult? Function(ParsedInstructionUnsupported value)? unsupported,
  }) {
    return memo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedInstructionSystem value)? system,
    TResult Function(ParsedInstructionSplToken value)? splToken,
    TResult Function(ParsedInstructionMemo value)? memo,
    TResult Function(ParsedInstructionUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (memo != null) {
      return memo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedInstructionMemoImplToJson(
      this,
    );
  }
}

abstract class ParsedInstructionMemo implements ParsedInstruction {
  const factory ParsedInstructionMemo(
          {@JsonKey(name: 'parsed') required final String? memo}) =
      _$ParsedInstructionMemoImpl;

  factory ParsedInstructionMemo.fromJson(Map<String, dynamic> json) =
      _$ParsedInstructionMemoImpl.fromJson;

// This ignore is needed until https://github.com/dart-lang/linter/issues/2778 is fixed
// ignore: invalid_annotation_target
  @JsonKey(name: 'parsed')
  String? get memo;

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedInstructionMemoImplCopyWith<_$ParsedInstructionMemoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsedInstructionUnsupportedImplCopyWith<$Res> {
  factory _$$ParsedInstructionUnsupportedImplCopyWith(
          _$ParsedInstructionUnsupportedImpl value,
          $Res Function(_$ParsedInstructionUnsupportedImpl) then) =
      __$$ParsedInstructionUnsupportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? program});
}

/// @nodoc
class __$$ParsedInstructionUnsupportedImplCopyWithImpl<$Res>
    extends _$ParsedInstructionCopyWithImpl<$Res,
        _$ParsedInstructionUnsupportedImpl>
    implements _$$ParsedInstructionUnsupportedImplCopyWith<$Res> {
  __$$ParsedInstructionUnsupportedImplCopyWithImpl(
      _$ParsedInstructionUnsupportedImpl _value,
      $Res Function(_$ParsedInstructionUnsupportedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? program = freezed,
  }) {
    return _then(_$ParsedInstructionUnsupportedImpl(
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedInstructionUnsupportedImpl
    implements ParsedInstructionUnsupported {
  const _$ParsedInstructionUnsupportedImpl({this.program});

  factory _$ParsedInstructionUnsupportedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedInstructionUnsupportedImplFromJson(json);

  @override
  final String? program;

  @override
  String toString() {
    return 'ParsedInstruction.unsupported(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedInstructionUnsupportedImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedInstructionUnsupportedImplCopyWith<
          _$ParsedInstructionUnsupportedImpl>
      get copyWith => __$$ParsedInstructionUnsupportedImplCopyWithImpl<
          _$ParsedInstructionUnsupportedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String programId, ParsedSystemInstruction parsed)
        system,
    required TResult Function(ParsedSplTokenInstruction parsed) splToken,
    required TResult Function(@JsonKey(name: 'parsed') String? memo) memo,
    required TResult Function(String? program) unsupported,
  }) {
    return unsupported(program);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult? Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult? Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult? Function(String? program)? unsupported,
  }) {
    return unsupported?.call(program);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String programId, ParsedSystemInstruction parsed)? system,
    TResult Function(ParsedSplTokenInstruction parsed)? splToken,
    TResult Function(@JsonKey(name: 'parsed') String? memo)? memo,
    TResult Function(String? program)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(program);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedInstructionSystem value) system,
    required TResult Function(ParsedInstructionSplToken value) splToken,
    required TResult Function(ParsedInstructionMemo value) memo,
    required TResult Function(ParsedInstructionUnsupported value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParsedInstructionSystem value)? system,
    TResult? Function(ParsedInstructionSplToken value)? splToken,
    TResult? Function(ParsedInstructionMemo value)? memo,
    TResult? Function(ParsedInstructionUnsupported value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedInstructionSystem value)? system,
    TResult Function(ParsedInstructionSplToken value)? splToken,
    TResult Function(ParsedInstructionMemo value)? memo,
    TResult Function(ParsedInstructionUnsupported value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedInstructionUnsupportedImplToJson(
      this,
    );
  }
}

abstract class ParsedInstructionUnsupported implements ParsedInstruction {
  const factory ParsedInstructionUnsupported({final String? program}) =
      _$ParsedInstructionUnsupportedImpl;

  factory ParsedInstructionUnsupported.fromJson(Map<String, dynamic> json) =
      _$ParsedInstructionUnsupportedImpl.fromJson;

  String? get program;

  /// Create a copy of ParsedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParsedInstructionUnsupportedImplCopyWith<
          _$ParsedInstructionUnsupportedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
