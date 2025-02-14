// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_program_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SplTokenProgramAccountData _$SplTokenProgramAccountDataFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'account':
      return TokenAccountData.fromJson(json);
    case 'mint':
      return MintAccountData.fromJson(json);

    default:
      return UnknownAccountData.fromJson(json);
  }
}

/// @nodoc
mixin _$SplTokenProgramAccountData {
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)
        account,
    required TResult Function(
            MintAccountDataInfo info, String type, String? accountType)
        mint,
    required TResult Function(String type) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult? Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult? Function(String type)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult Function(String type)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenAccountData value) account,
    required TResult Function(MintAccountData value) mint,
    required TResult Function(UnknownAccountData value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenAccountData value)? account,
    TResult? Function(MintAccountData value)? mint,
    TResult? Function(UnknownAccountData value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenAccountData value)? account,
    TResult Function(MintAccountData value)? mint,
    TResult Function(UnknownAccountData value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SplTokenProgramAccountData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SplTokenProgramAccountDataCopyWith<SplTokenProgramAccountData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplTokenProgramAccountDataCopyWith<$Res> {
  factory $SplTokenProgramAccountDataCopyWith(SplTokenProgramAccountData value,
          $Res Function(SplTokenProgramAccountData) then) =
      _$SplTokenProgramAccountDataCopyWithImpl<$Res,
          SplTokenProgramAccountData>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$SplTokenProgramAccountDataCopyWithImpl<$Res,
        $Val extends SplTokenProgramAccountData>
    implements $SplTokenProgramAccountDataCopyWith<$Res> {
  _$SplTokenProgramAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplTokenProgramAccountData
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
abstract class _$$TokenAccountDataImplCopyWith<$Res>
    implements $SplTokenProgramAccountDataCopyWith<$Res> {
  factory _$$TokenAccountDataImplCopyWith(_$TokenAccountDataImpl value,
          $Res Function(_$TokenAccountDataImpl) then) =
      __$$TokenAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplTokenAccountDataInfo info, String type, String? accountType});
}

/// @nodoc
class __$$TokenAccountDataImplCopyWithImpl<$Res>
    extends _$SplTokenProgramAccountDataCopyWithImpl<$Res,
        _$TokenAccountDataImpl>
    implements _$$TokenAccountDataImplCopyWith<$Res> {
  __$$TokenAccountDataImplCopyWithImpl(_$TokenAccountDataImpl _value,
      $Res Function(_$TokenAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
    Object? accountType = freezed,
  }) {
    return _then(_$TokenAccountDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as SplTokenAccountDataInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenAccountDataImpl implements TokenAccountData {
  const _$TokenAccountDataImpl(
      {required this.info, required this.type, this.accountType});

  factory _$TokenAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenAccountDataImplFromJson(json);

  @override
  final SplTokenAccountDataInfo info;
  @override
  final String type;
  @override
  final String? accountType;

  @override
  String toString() {
    return 'SplTokenProgramAccountData.account(info: $info, type: $type, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAccountDataImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type, accountType);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAccountDataImplCopyWith<_$TokenAccountDataImpl> get copyWith =>
      __$$TokenAccountDataImplCopyWithImpl<_$TokenAccountDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)
        account,
    required TResult Function(
            MintAccountDataInfo info, String type, String? accountType)
        mint,
    required TResult Function(String type) unknown,
  }) {
    return account(info, type, accountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult? Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult? Function(String type)? unknown,
  }) {
    return account?.call(info, type, accountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult Function(String type)? unknown,
    required TResult orElse(),
  }) {
    if (account != null) {
      return account(info, type, accountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenAccountData value) account,
    required TResult Function(MintAccountData value) mint,
    required TResult Function(UnknownAccountData value) unknown,
  }) {
    return account(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenAccountData value)? account,
    TResult? Function(MintAccountData value)? mint,
    TResult? Function(UnknownAccountData value)? unknown,
  }) {
    return account?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenAccountData value)? account,
    TResult Function(MintAccountData value)? mint,
    TResult Function(UnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (account != null) {
      return account(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenAccountDataImplToJson(
      this,
    );
  }
}

abstract class TokenAccountData implements SplTokenProgramAccountData {
  const factory TokenAccountData(
      {required final SplTokenAccountDataInfo info,
      required final String type,
      final String? accountType}) = _$TokenAccountDataImpl;

  factory TokenAccountData.fromJson(Map<String, dynamic> json) =
      _$TokenAccountDataImpl.fromJson;

  SplTokenAccountDataInfo get info;
  @override
  String get type;
  String? get accountType;

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAccountDataImplCopyWith<_$TokenAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MintAccountDataImplCopyWith<$Res>
    implements $SplTokenProgramAccountDataCopyWith<$Res> {
  factory _$$MintAccountDataImplCopyWith(_$MintAccountDataImpl value,
          $Res Function(_$MintAccountDataImpl) then) =
      __$$MintAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MintAccountDataInfo info, String type, String? accountType});
}

/// @nodoc
class __$$MintAccountDataImplCopyWithImpl<$Res>
    extends _$SplTokenProgramAccountDataCopyWithImpl<$Res,
        _$MintAccountDataImpl> implements _$$MintAccountDataImplCopyWith<$Res> {
  __$$MintAccountDataImplCopyWithImpl(
      _$MintAccountDataImpl _value, $Res Function(_$MintAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? type = null,
    Object? accountType = freezed,
  }) {
    return _then(_$MintAccountDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as MintAccountDataInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MintAccountDataImpl implements MintAccountData {
  const _$MintAccountDataImpl(
      {required this.info, required this.type, this.accountType});

  factory _$MintAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MintAccountDataImplFromJson(json);

  @override
  final MintAccountDataInfo info;
  @override
  final String type;
  @override
  final String? accountType;

  @override
  String toString() {
    return 'SplTokenProgramAccountData.mint(info: $info, type: $type, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MintAccountDataImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, type, accountType);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MintAccountDataImplCopyWith<_$MintAccountDataImpl> get copyWith =>
      __$$MintAccountDataImplCopyWithImpl<_$MintAccountDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)
        account,
    required TResult Function(
            MintAccountDataInfo info, String type, String? accountType)
        mint,
    required TResult Function(String type) unknown,
  }) {
    return mint(info, type, accountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult? Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult? Function(String type)? unknown,
  }) {
    return mint?.call(info, type, accountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult Function(String type)? unknown,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(info, type, accountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenAccountData value) account,
    required TResult Function(MintAccountData value) mint,
    required TResult Function(UnknownAccountData value) unknown,
  }) {
    return mint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenAccountData value)? account,
    TResult? Function(MintAccountData value)? mint,
    TResult? Function(UnknownAccountData value)? unknown,
  }) {
    return mint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenAccountData value)? account,
    TResult Function(MintAccountData value)? mint,
    TResult Function(UnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (mint != null) {
      return mint(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MintAccountDataImplToJson(
      this,
    );
  }
}

abstract class MintAccountData implements SplTokenProgramAccountData {
  const factory MintAccountData(
      {required final MintAccountDataInfo info,
      required final String type,
      final String? accountType}) = _$MintAccountDataImpl;

  factory MintAccountData.fromJson(Map<String, dynamic> json) =
      _$MintAccountDataImpl.fromJson;

  MintAccountDataInfo get info;
  @override
  String get type;
  String? get accountType;

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MintAccountDataImplCopyWith<_$MintAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownAccountDataImplCopyWith<$Res>
    implements $SplTokenProgramAccountDataCopyWith<$Res> {
  factory _$$UnknownAccountDataImplCopyWith(_$UnknownAccountDataImpl value,
          $Res Function(_$UnknownAccountDataImpl) then) =
      __$$UnknownAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$UnknownAccountDataImplCopyWithImpl<$Res>
    extends _$SplTokenProgramAccountDataCopyWithImpl<$Res,
        _$UnknownAccountDataImpl>
    implements _$$UnknownAccountDataImplCopyWith<$Res> {
  __$$UnknownAccountDataImplCopyWithImpl(_$UnknownAccountDataImpl _value,
      $Res Function(_$UnknownAccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UnknownAccountDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnknownAccountDataImpl implements UnknownAccountData {
  const _$UnknownAccountDataImpl({required this.type});

  factory _$UnknownAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownAccountDataImplFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'SplTokenProgramAccountData.unknown(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownAccountDataImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownAccountDataImplCopyWith<_$UnknownAccountDataImpl> get copyWith =>
      __$$UnknownAccountDataImplCopyWithImpl<_$UnknownAccountDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)
        account,
    required TResult Function(
            MintAccountDataInfo info, String type, String? accountType)
        mint,
    required TResult Function(String type) unknown,
  }) {
    return unknown(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult? Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult? Function(String type)? unknown,
  }) {
    return unknown?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SplTokenAccountDataInfo info, String type, String? accountType)?
        account,
    TResult Function(
            MintAccountDataInfo info, String type, String? accountType)?
        mint,
    TResult Function(String type)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TokenAccountData value) account,
    required TResult Function(MintAccountData value) mint,
    required TResult Function(UnknownAccountData value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TokenAccountData value)? account,
    TResult? Function(MintAccountData value)? mint,
    TResult? Function(UnknownAccountData value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TokenAccountData value)? account,
    TResult Function(MintAccountData value)? mint,
    TResult Function(UnknownAccountData value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownAccountDataImplToJson(
      this,
    );
  }
}

abstract class UnknownAccountData implements SplTokenProgramAccountData {
  const factory UnknownAccountData({required final String type}) =
      _$UnknownAccountDataImpl;

  factory UnknownAccountData.fromJson(Map<String, dynamic> json) =
      _$UnknownAccountDataImpl.fromJson;

  @override
  String get type;

  /// Create a copy of SplTokenProgramAccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownAccountDataImplCopyWith<_$UnknownAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
