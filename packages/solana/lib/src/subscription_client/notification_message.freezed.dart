// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) {
  switch (json['method']) {
    case 'accountNotification':
      return AccountNotification.fromJson(json);
    case 'logsNotification':
      return LogsNotification.fromJson(json);
    case 'programNotification':
      return ProgramNotification.fromJson(json);
    case 'signatureNotification':
      return SignatureNotification.fromJson(json);
    case 'slotNotification':
      return SlotNotification.fromJson(json);

    default:
      return _UnsupportedNotification.fromJson(json);
  }
}

/// @nodoc
mixin _$NotificationMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessageCopyWith<$Res> {
  factory $NotificationMessageCopyWith(
          NotificationMessage value, $Res Function(NotificationMessage) then) =
      _$NotificationMessageCopyWithImpl<$Res, NotificationMessage>;
}

/// @nodoc
class _$NotificationMessageCopyWithImpl<$Res, $Val extends NotificationMessage>
    implements $NotificationMessageCopyWith<$Res> {
  _$NotificationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnsupportedNotificationImplCopyWith<$Res> {
  factory _$$UnsupportedNotificationImplCopyWith(
          _$UnsupportedNotificationImpl value,
          $Res Function(_$UnsupportedNotificationImpl) then) =
      __$$UnsupportedNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnsupportedNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res,
        _$UnsupportedNotificationImpl>
    implements _$$UnsupportedNotificationImplCopyWith<$Res> {
  __$$UnsupportedNotificationImplCopyWithImpl(
      _$UnsupportedNotificationImpl _value,
      $Res Function(_$UnsupportedNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UnsupportedNotificationImpl extends _UnsupportedNotification {
  const _$UnsupportedNotificationImpl({final String? $type})
      : $type = $type ?? 'unsupported',
        super._();

  factory _$UnsupportedNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsupportedNotificationImplFromJson(json);

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.unsupported()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsupportedNotificationImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return unsupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return unsupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsupportedNotificationImplToJson(
      this,
    );
  }
}

abstract class _UnsupportedNotification extends NotificationMessage {
  const factory _UnsupportedNotification() = _$UnsupportedNotificationImpl;
  const _UnsupportedNotification._() : super._();

  factory _UnsupportedNotification.fromJson(Map<String, dynamic> json) =
      _$UnsupportedNotificationImpl.fromJson;
}

/// @nodoc
abstract class _$$AccountNotificationImplCopyWith<$Res> {
  factory _$$AccountNotificationImplCopyWith(_$AccountNotificationImpl value,
          $Res Function(_$AccountNotificationImpl) then) =
      __$$AccountNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationParams<Account> params});
}

/// @nodoc
class __$$AccountNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$AccountNotificationImpl>
    implements _$$AccountNotificationImplCopyWith<$Res> {
  __$$AccountNotificationImplCopyWithImpl(_$AccountNotificationImpl _value,
      $Res Function(_$AccountNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AccountNotificationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParams<Account>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountNotificationImpl extends AccountNotification {
  const _$AccountNotificationImpl({required this.params, final String? $type})
      : $type = $type ?? 'accountNotification',
        super._();

  factory _$AccountNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountNotificationImplFromJson(json);

  @override
  final NotificationParams<Account> params;

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.accountNotification(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountNotificationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountNotificationImplCopyWith<_$AccountNotificationImpl> get copyWith =>
      __$$AccountNotificationImplCopyWithImpl<_$AccountNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return accountNotification(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return accountNotification?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (accountNotification != null) {
      return accountNotification(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return accountNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return accountNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (accountNotification != null) {
      return accountNotification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountNotificationImplToJson(
      this,
    );
  }
}

abstract class AccountNotification extends NotificationMessage {
  const factory AccountNotification(
          {required final NotificationParams<Account> params}) =
      _$AccountNotificationImpl;
  const AccountNotification._() : super._();

  factory AccountNotification.fromJson(Map<String, dynamic> json) =
      _$AccountNotificationImpl.fromJson;

  NotificationParams<Account> get params;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountNotificationImplCopyWith<_$AccountNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogsNotificationImplCopyWith<$Res> {
  factory _$$LogsNotificationImplCopyWith(_$LogsNotificationImpl value,
          $Res Function(_$LogsNotificationImpl) then) =
      __$$LogsNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationParams<Logs> params});
}

/// @nodoc
class __$$LogsNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$LogsNotificationImpl>
    implements _$$LogsNotificationImplCopyWith<$Res> {
  __$$LogsNotificationImplCopyWithImpl(_$LogsNotificationImpl _value,
      $Res Function(_$LogsNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$LogsNotificationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParams<Logs>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogsNotificationImpl extends LogsNotification {
  const _$LogsNotificationImpl({required this.params, final String? $type})
      : $type = $type ?? 'logsNotification',
        super._();

  factory _$LogsNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogsNotificationImplFromJson(json);

  @override
  final NotificationParams<Logs> params;

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.logsNotification(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogsNotificationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogsNotificationImplCopyWith<_$LogsNotificationImpl> get copyWith =>
      __$$LogsNotificationImplCopyWithImpl<_$LogsNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return logsNotification(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return logsNotification?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (logsNotification != null) {
      return logsNotification(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return logsNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return logsNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (logsNotification != null) {
      return logsNotification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LogsNotificationImplToJson(
      this,
    );
  }
}

abstract class LogsNotification extends NotificationMessage {
  const factory LogsNotification(
          {required final NotificationParams<Logs> params}) =
      _$LogsNotificationImpl;
  const LogsNotification._() : super._();

  factory LogsNotification.fromJson(Map<String, dynamic> json) =
      _$LogsNotificationImpl.fromJson;

  NotificationParams<Logs> get params;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogsNotificationImplCopyWith<_$LogsNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgramNotificationImplCopyWith<$Res> {
  factory _$$ProgramNotificationImplCopyWith(_$ProgramNotificationImpl value,
          $Res Function(_$ProgramNotificationImpl) then) =
      __$$ProgramNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationParams<dynamic> params});
}

/// @nodoc
class __$$ProgramNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$ProgramNotificationImpl>
    implements _$$ProgramNotificationImplCopyWith<$Res> {
  __$$ProgramNotificationImplCopyWithImpl(_$ProgramNotificationImpl _value,
      $Res Function(_$ProgramNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProgramNotificationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParams<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramNotificationImpl extends ProgramNotification {
  const _$ProgramNotificationImpl({required this.params, final String? $type})
      : $type = $type ?? 'programNotification',
        super._();

  factory _$ProgramNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramNotificationImplFromJson(json);

  @override
  final NotificationParams<dynamic> params;

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.programNotification(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramNotificationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramNotificationImplCopyWith<_$ProgramNotificationImpl> get copyWith =>
      __$$ProgramNotificationImplCopyWithImpl<_$ProgramNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return programNotification(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return programNotification?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (programNotification != null) {
      return programNotification(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return programNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return programNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (programNotification != null) {
      return programNotification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramNotificationImplToJson(
      this,
    );
  }
}

abstract class ProgramNotification extends NotificationMessage {
  const factory ProgramNotification(
          {required final NotificationParams<dynamic> params}) =
      _$ProgramNotificationImpl;
  const ProgramNotification._() : super._();

  factory ProgramNotification.fromJson(Map<String, dynamic> json) =
      _$ProgramNotificationImpl.fromJson;

  NotificationParams<dynamic> get params;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramNotificationImplCopyWith<_$ProgramNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignatureNotificationImplCopyWith<$Res> {
  factory _$$SignatureNotificationImplCopyWith(
          _$SignatureNotificationImpl value,
          $Res Function(_$SignatureNotificationImpl) then) =
      __$$SignatureNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationParams<OptionalError> params});
}

/// @nodoc
class __$$SignatureNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$SignatureNotificationImpl>
    implements _$$SignatureNotificationImplCopyWith<$Res> {
  __$$SignatureNotificationImplCopyWithImpl(_$SignatureNotificationImpl _value,
      $Res Function(_$SignatureNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$SignatureNotificationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParams<OptionalError>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureNotificationImpl extends SignatureNotification {
  const _$SignatureNotificationImpl({required this.params, final String? $type})
      : $type = $type ?? 'signatureNotification',
        super._();

  factory _$SignatureNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureNotificationImplFromJson(json);

  @override
  final NotificationParams<OptionalError> params;

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.signatureNotification(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureNotificationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureNotificationImplCopyWith<_$SignatureNotificationImpl>
      get copyWith => __$$SignatureNotificationImplCopyWithImpl<
          _$SignatureNotificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return signatureNotification(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return signatureNotification?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (signatureNotification != null) {
      return signatureNotification(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return signatureNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return signatureNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (signatureNotification != null) {
      return signatureNotification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureNotificationImplToJson(
      this,
    );
  }
}

abstract class SignatureNotification extends NotificationMessage {
  const factory SignatureNotification(
          {required final NotificationParams<OptionalError> params}) =
      _$SignatureNotificationImpl;
  const SignatureNotification._() : super._();

  factory SignatureNotification.fromJson(Map<String, dynamic> json) =
      _$SignatureNotificationImpl.fromJson;

  NotificationParams<OptionalError> get params;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignatureNotificationImplCopyWith<_$SignatureNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlotNotificationImplCopyWith<$Res> {
  factory _$$SlotNotificationImplCopyWith(_$SlotNotificationImpl value,
          $Res Function(_$SlotNotificationImpl) then) =
      __$$SlotNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationParams<Slot> params});
}

/// @nodoc
class __$$SlotNotificationImplCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res, _$SlotNotificationImpl>
    implements _$$SlotNotificationImplCopyWith<$Res> {
  __$$SlotNotificationImplCopyWithImpl(_$SlotNotificationImpl _value,
      $Res Function(_$SlotNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$SlotNotificationImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NotificationParams<Slot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotNotificationImpl extends SlotNotification {
  const _$SlotNotificationImpl({required this.params, final String? $type})
      : $type = $type ?? 'slotNotification',
        super._();

  factory _$SlotNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlotNotificationImplFromJson(json);

  @override
  final NotificationParams<Slot> params;

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'NotificationMessage.slotNotification(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotNotificationImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotNotificationImplCopyWith<_$SlotNotificationImpl> get copyWith =>
      __$$SlotNotificationImplCopyWithImpl<_$SlotNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unsupported,
    required TResult Function(NotificationParams<Account> params)
        accountNotification,
    required TResult Function(NotificationParams<Logs> params) logsNotification,
    required TResult Function(NotificationParams<dynamic> params)
        programNotification,
    required TResult Function(NotificationParams<OptionalError> params)
        signatureNotification,
    required TResult Function(NotificationParams<Slot> params) slotNotification,
  }) {
    return slotNotification(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unsupported,
    TResult? Function(NotificationParams<Account> params)? accountNotification,
    TResult? Function(NotificationParams<Logs> params)? logsNotification,
    TResult? Function(NotificationParams<dynamic> params)? programNotification,
    TResult? Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult? Function(NotificationParams<Slot> params)? slotNotification,
  }) {
    return slotNotification?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unsupported,
    TResult Function(NotificationParams<Account> params)? accountNotification,
    TResult Function(NotificationParams<Logs> params)? logsNotification,
    TResult Function(NotificationParams<dynamic> params)? programNotification,
    TResult Function(NotificationParams<OptionalError> params)?
        signatureNotification,
    TResult Function(NotificationParams<Slot> params)? slotNotification,
    required TResult orElse(),
  }) {
    if (slotNotification != null) {
      return slotNotification(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnsupportedNotification value) unsupported,
    required TResult Function(AccountNotification value) accountNotification,
    required TResult Function(LogsNotification value) logsNotification,
    required TResult Function(ProgramNotification value) programNotification,
    required TResult Function(SignatureNotification value)
        signatureNotification,
    required TResult Function(SlotNotification value) slotNotification,
  }) {
    return slotNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnsupportedNotification value)? unsupported,
    TResult? Function(AccountNotification value)? accountNotification,
    TResult? Function(LogsNotification value)? logsNotification,
    TResult? Function(ProgramNotification value)? programNotification,
    TResult? Function(SignatureNotification value)? signatureNotification,
    TResult? Function(SlotNotification value)? slotNotification,
  }) {
    return slotNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnsupportedNotification value)? unsupported,
    TResult Function(AccountNotification value)? accountNotification,
    TResult Function(LogsNotification value)? logsNotification,
    TResult Function(ProgramNotification value)? programNotification,
    TResult Function(SignatureNotification value)? signatureNotification,
    TResult Function(SlotNotification value)? slotNotification,
    required TResult orElse(),
  }) {
    if (slotNotification != null) {
      return slotNotification(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotNotificationImplToJson(
      this,
    );
  }
}

abstract class SlotNotification extends NotificationMessage {
  const factory SlotNotification(
          {required final NotificationParams<Slot> params}) =
      _$SlotNotificationImpl;
  const SlotNotification._() : super._();

  factory SlotNotification.fromJson(Map<String, dynamic> json) =
      _$SlotNotificationImpl.fromJson;

  NotificationParams<Slot> get params;

  /// Create a copy of NotificationMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotNotificationImplCopyWith<_$SlotNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
