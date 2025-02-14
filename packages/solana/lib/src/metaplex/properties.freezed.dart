// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  switch (json['category']) {
    case 'video':
      return Video.fromJson(json);
    case 'image':
      return Image.fromJson(json);
    case 'vr':
      return Model3D.fromJson(json);
    case 'audio':
      return Audio.fromJson(json);
    case 'html':
      return Html.fromJson(json);

    default:
      return Unknown.fromJson(json);
  }
}

/// @nodoc
mixin _$Properties {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({final String? $type}) : $type = $type ?? 'unknown';

  factory _$UnknownImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownImplFromJson(json);

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownImplToJson(
      this,
    );
  }
}

abstract class Unknown implements Properties {
  const factory Unknown() = _$UnknownImpl;

  factory Unknown.fromJson(Map<String, dynamic> json) = _$UnknownImpl.fromJson;
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$VideoImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl implements Video {
  const _$VideoImpl({required final List<File> files, final String? $type})
      : _files = files,
        $type = $type ?? 'video';

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.video(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return video(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return video?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class Video implements Properties {
  const factory Video({required final List<File> files}) = _$VideoImpl;

  factory Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  List<File> get files;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$ImageImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements Image {
  const _$ImageImpl({required final List<File> files, final String? $type})
      : _files = files,
        $type = $type ?? 'image';

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.image(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return image(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return image?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class Image implements Properties {
  const factory Image({required final List<File> files}) = _$ImageImpl;

  factory Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  List<File> get files;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Model3DImplCopyWith<$Res> {
  factory _$$Model3DImplCopyWith(
          _$Model3DImpl value, $Res Function(_$Model3DImpl) then) =
      __$$Model3DImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$Model3DImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$Model3DImpl>
    implements _$$Model3DImplCopyWith<$Res> {
  __$$Model3DImplCopyWithImpl(
      _$Model3DImpl _value, $Res Function(_$Model3DImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$Model3DImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Model3DImpl implements Model3D {
  const _$Model3DImpl({required final List<File> files, final String? $type})
      : _files = files,
        $type = $type ?? 'vr';

  factory _$Model3DImpl.fromJson(Map<String, dynamic> json) =>
      _$$Model3DImplFromJson(json);

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.vr(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Model3DImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Model3DImplCopyWith<_$Model3DImpl> get copyWith =>
      __$$Model3DImplCopyWithImpl<_$Model3DImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return vr(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return vr?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (vr != null) {
      return vr(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return vr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return vr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (vr != null) {
      return vr(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$Model3DImplToJson(
      this,
    );
  }
}

abstract class Model3D implements Properties {
  const factory Model3D({required final List<File> files}) = _$Model3DImpl;

  factory Model3D.fromJson(Map<String, dynamic> json) = _$Model3DImpl.fromJson;

  List<File> get files;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Model3DImplCopyWith<_$Model3DImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioImplCopyWith<$Res> {
  factory _$$AudioImplCopyWith(
          _$AudioImpl value, $Res Function(_$AudioImpl) then) =
      __$$AudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$AudioImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$AudioImpl>
    implements _$$AudioImplCopyWith<$Res> {
  __$$AudioImplCopyWithImpl(
      _$AudioImpl _value, $Res Function(_$AudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$AudioImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioImpl implements Audio {
  const _$AudioImpl({required final List<File> files, final String? $type})
      : _files = files,
        $type = $type ?? 'audio';

  factory _$AudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioImplFromJson(json);

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.audio(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      __$$AudioImplCopyWithImpl<_$AudioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return audio(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return audio?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioImplToJson(
      this,
    );
  }
}

abstract class Audio implements Properties {
  const factory Audio({required final List<File> files}) = _$AudioImpl;

  factory Audio.fromJson(Map<String, dynamic> json) = _$AudioImpl.fromJson;

  List<File> get files;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HtmlImplCopyWith<$Res> {
  factory _$$HtmlImplCopyWith(
          _$HtmlImpl value, $Res Function(_$HtmlImpl) then) =
      __$$HtmlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$HtmlImplCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$HtmlImpl>
    implements _$$HtmlImplCopyWith<$Res> {
  __$$HtmlImplCopyWithImpl(_$HtmlImpl _value, $Res Function(_$HtmlImpl) _then)
      : super(_value, _then);

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$HtmlImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HtmlImpl implements Html {
  const _$HtmlImpl({required final List<File> files, final String? $type})
      : _files = files,
        $type = $type ?? 'html';

  factory _$HtmlImpl.fromJson(Map<String, dynamic> json) =>
      _$$HtmlImplFromJson(json);

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @JsonKey(name: 'category')
  final String $type;

  @override
  String toString() {
    return 'Properties.html(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HtmlImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HtmlImplCopyWith<_$HtmlImpl> get copyWith =>
      __$$HtmlImplCopyWithImpl<_$HtmlImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(List<File> files) video,
    required TResult Function(List<File> files) image,
    required TResult Function(List<File> files) vr,
    required TResult Function(List<File> files) audio,
    required TResult Function(List<File> files) html,
  }) {
    return html(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(List<File> files)? video,
    TResult? Function(List<File> files)? image,
    TResult? Function(List<File> files)? vr,
    TResult? Function(List<File> files)? audio,
    TResult? Function(List<File> files)? html,
  }) {
    return html?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(List<File> files)? video,
    TResult Function(List<File> files)? image,
    TResult Function(List<File> files)? vr,
    TResult Function(List<File> files)? audio,
    TResult Function(List<File> files)? html,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(Video value) video,
    required TResult Function(Image value) image,
    required TResult Function(Model3D value) vr,
    required TResult Function(Audio value) audio,
    required TResult Function(Html value) html,
  }) {
    return html(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(Video value)? video,
    TResult? Function(Image value)? image,
    TResult? Function(Model3D value)? vr,
    TResult? Function(Audio value)? audio,
    TResult? Function(Html value)? html,
  }) {
    return html?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(Video value)? video,
    TResult Function(Image value)? image,
    TResult Function(Model3D value)? vr,
    TResult Function(Audio value)? audio,
    TResult Function(Html value)? html,
    required TResult orElse(),
  }) {
    if (html != null) {
      return html(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HtmlImplToJson(
      this,
    );
  }
}

abstract class Html implements Properties {
  const factory Html({required final List<File> files}) = _$HtmlImpl;

  factory Html.fromJson(Map<String, dynamic> json) = _$HtmlImpl.fromJson;

  List<File> get files;

  /// Create a copy of Properties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HtmlImplCopyWith<_$HtmlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
