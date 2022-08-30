// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_and_send_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignAndSendTransactionsRequest {
  String? get identityName => throw _privateConstructorUsedError;
  Uri? get identityUri => throw _privateConstructorUsedError;
  Uri? get iconRelativeUri => throw _privateConstructorUsedError;
  String get cluster => throw _privateConstructorUsedError;
  Uint8List get authorizationScope => throw _privateConstructorUsedError;
  List<Uint8List> get transactions => throw _privateConstructorUsedError;
  int? get minContextSlot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignAndSendTransactionsRequestCopyWith<SignAndSendTransactionsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignAndSendTransactionsRequestCopyWith<$Res> {
  factory $SignAndSendTransactionsRequestCopyWith(
          SignAndSendTransactionsRequest value,
          $Res Function(SignAndSendTransactionsRequest) then) =
      _$SignAndSendTransactionsRequestCopyWithImpl<$Res>;
  $Res call(
      {String? identityName,
      Uri? identityUri,
      Uri? iconRelativeUri,
      String cluster,
      Uint8List authorizationScope,
      List<Uint8List> transactions,
      int? minContextSlot});
}

/// @nodoc
class _$SignAndSendTransactionsRequestCopyWithImpl<$Res>
    implements $SignAndSendTransactionsRequestCopyWith<$Res> {
  _$SignAndSendTransactionsRequestCopyWithImpl(this._value, this._then);

  final SignAndSendTransactionsRequest _value;
  // ignore: unused_field
  final $Res Function(SignAndSendTransactionsRequest) _then;

  @override
  $Res call({
    Object? identityName = freezed,
    Object? identityUri = freezed,
    Object? iconRelativeUri = freezed,
    Object? cluster = freezed,
    Object? authorizationScope = freezed,
    Object? transactions = freezed,
    Object? minContextSlot = freezed,
  }) {
    return _then(_value.copyWith(
      identityName: identityName == freezed
          ? _value.identityName
          : identityName // ignore: cast_nullable_to_non_nullable
              as String?,
      identityUri: identityUri == freezed
          ? _value.identityUri
          : identityUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      iconRelativeUri: iconRelativeUri == freezed
          ? _value.iconRelativeUri
          : iconRelativeUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      cluster: cluster == freezed
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationScope: authorizationScope == freezed
          ? _value.authorizationScope
          : authorizationScope // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      minContextSlot: minContextSlot == freezed
          ? _value.minContextSlot
          : minContextSlot // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SignAndSendTransactionsRequestCopyWith<$Res>
    implements $SignAndSendTransactionsRequestCopyWith<$Res> {
  factory _$$_SignAndSendTransactionsRequestCopyWith(
          _$_SignAndSendTransactionsRequest value,
          $Res Function(_$_SignAndSendTransactionsRequest) then) =
      __$$_SignAndSendTransactionsRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? identityName,
      Uri? identityUri,
      Uri? iconRelativeUri,
      String cluster,
      Uint8List authorizationScope,
      List<Uint8List> transactions,
      int? minContextSlot});
}

/// @nodoc
class __$$_SignAndSendTransactionsRequestCopyWithImpl<$Res>
    extends _$SignAndSendTransactionsRequestCopyWithImpl<$Res>
    implements _$$_SignAndSendTransactionsRequestCopyWith<$Res> {
  __$$_SignAndSendTransactionsRequestCopyWithImpl(
      _$_SignAndSendTransactionsRequest _value,
      $Res Function(_$_SignAndSendTransactionsRequest) _then)
      : super(_value, (v) => _then(v as _$_SignAndSendTransactionsRequest));

  @override
  _$_SignAndSendTransactionsRequest get _value =>
      super._value as _$_SignAndSendTransactionsRequest;

  @override
  $Res call({
    Object? identityName = freezed,
    Object? identityUri = freezed,
    Object? iconRelativeUri = freezed,
    Object? cluster = freezed,
    Object? authorizationScope = freezed,
    Object? transactions = freezed,
    Object? minContextSlot = freezed,
  }) {
    return _then(_$_SignAndSendTransactionsRequest(
      identityName: identityName == freezed
          ? _value.identityName
          : identityName // ignore: cast_nullable_to_non_nullable
              as String?,
      identityUri: identityUri == freezed
          ? _value.identityUri
          : identityUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      iconRelativeUri: iconRelativeUri == freezed
          ? _value.iconRelativeUri
          : iconRelativeUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      cluster: cluster == freezed
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationScope: authorizationScope == freezed
          ? _value.authorizationScope
          : authorizationScope // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      minContextSlot: minContextSlot == freezed
          ? _value.minContextSlot
          : minContextSlot // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SignAndSendTransactionsRequest
    implements _SignAndSendTransactionsRequest {
  const _$_SignAndSendTransactionsRequest(
      {required this.identityName,
      required this.identityUri,
      required this.iconRelativeUri,
      required this.cluster,
      required this.authorizationScope,
      required final List<Uint8List> transactions,
      required this.minContextSlot})
      : _transactions = transactions;

  @override
  final String? identityName;
  @override
  final Uri? identityUri;
  @override
  final Uri? iconRelativeUri;
  @override
  final String cluster;
  @override
  final Uint8List authorizationScope;
  final List<Uint8List> _transactions;
  @override
  List<Uint8List> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final int? minContextSlot;

  @override
  String toString() {
    return 'SignAndSendTransactionsRequest(identityName: $identityName, identityUri: $identityUri, iconRelativeUri: $iconRelativeUri, cluster: $cluster, authorizationScope: $authorizationScope, transactions: $transactions, minContextSlot: $minContextSlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignAndSendTransactionsRequest &&
            const DeepCollectionEquality()
                .equals(other.identityName, identityName) &&
            const DeepCollectionEquality()
                .equals(other.identityUri, identityUri) &&
            const DeepCollectionEquality()
                .equals(other.iconRelativeUri, iconRelativeUri) &&
            const DeepCollectionEquality().equals(other.cluster, cluster) &&
            const DeepCollectionEquality()
                .equals(other.authorizationScope, authorizationScope) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other.minContextSlot, minContextSlot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(identityName),
      const DeepCollectionEquality().hash(identityUri),
      const DeepCollectionEquality().hash(iconRelativeUri),
      const DeepCollectionEquality().hash(cluster),
      const DeepCollectionEquality().hash(authorizationScope),
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(minContextSlot));

  @JsonKey(ignore: true)
  @override
  _$$_SignAndSendTransactionsRequestCopyWith<_$_SignAndSendTransactionsRequest>
      get copyWith => __$$_SignAndSendTransactionsRequestCopyWithImpl<
          _$_SignAndSendTransactionsRequest>(this, _$identity);
}

abstract class _SignAndSendTransactionsRequest
    implements SignAndSendTransactionsRequest {
  const factory _SignAndSendTransactionsRequest(
      {required final String? identityName,
      required final Uri? identityUri,
      required final Uri? iconRelativeUri,
      required final String cluster,
      required final Uint8List authorizationScope,
      required final List<Uint8List> transactions,
      required final int? minContextSlot}) = _$_SignAndSendTransactionsRequest;

  @override
  String? get identityName;
  @override
  Uri? get identityUri;
  @override
  Uri? get iconRelativeUri;
  @override
  String get cluster;
  @override
  Uint8List get authorizationScope;
  @override
  List<Uint8List> get transactions;
  @override
  int? get minContextSlot;
  @override
  @JsonKey(ignore: true)
  _$$_SignAndSendTransactionsRequestCopyWith<_$_SignAndSendTransactionsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignaturesResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignaturesResultCopyWith<$Res> {
  factory $SignaturesResultCopyWith(
          SignaturesResult value, $Res Function(SignaturesResult) then) =
      _$SignaturesResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignaturesResultCopyWithImpl<$Res>
    implements $SignaturesResultCopyWith<$Res> {
  _$SignaturesResultCopyWithImpl(this._value, this._then);

  final SignaturesResult _value;
  // ignore: unused_field
  final $Res Function(SignaturesResult) _then;
}

/// @nodoc
abstract class _$$_SignaturesResultCopyWith<$Res> {
  factory _$$_SignaturesResultCopyWith(
          _$_SignaturesResult value, $Res Function(_$_SignaturesResult) then) =
      __$$_SignaturesResultCopyWithImpl<$Res>;
  $Res call({List<Uint8List> signatures});
}

/// @nodoc
class __$$_SignaturesResultCopyWithImpl<$Res>
    extends _$SignaturesResultCopyWithImpl<$Res>
    implements _$$_SignaturesResultCopyWith<$Res> {
  __$$_SignaturesResultCopyWithImpl(
      _$_SignaturesResult _value, $Res Function(_$_SignaturesResult) _then)
      : super(_value, (v) => _then(v as _$_SignaturesResult));

  @override
  _$_SignaturesResult get _value => super._value as _$_SignaturesResult;

  @override
  $Res call({
    Object? signatures = freezed,
  }) {
    return _then(_$_SignaturesResult(
      signatures: signatures == freezed
          ? _value._signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$_SignaturesResult extends _SignaturesResult {
  const _$_SignaturesResult({required final List<Uint8List> signatures})
      : _signatures = signatures,
        super._();

  final List<Uint8List> _signatures;
  @override
  List<Uint8List> get signatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_signatures);
  }

  @override
  String toString() {
    return 'SignaturesResult(signatures: $signatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignaturesResult &&
            const DeepCollectionEquality()
                .equals(other._signatures, _signatures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_signatures));

  @JsonKey(ignore: true)
  @override
  _$$_SignaturesResultCopyWith<_$_SignaturesResult> get copyWith =>
      __$$_SignaturesResultCopyWithImpl<_$_SignaturesResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) {
    return $default(signatures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) {
    return $default?.call(signatures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(signatures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignaturesResult extends SignaturesResult {
  const factory _SignaturesResult({required final List<Uint8List> signatures}) =
      _$_SignaturesResult;
  const _SignaturesResult._() : super._();

  List<Uint8List> get signatures;
  @JsonKey(ignore: true)
  _$$_SignaturesResultCopyWith<_$_SignaturesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestDeclinedCopyWith<$Res> {
  factory _$$_RequestDeclinedCopyWith(
          _$_RequestDeclined value, $Res Function(_$_RequestDeclined) then) =
      __$$_RequestDeclinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestDeclinedCopyWithImpl<$Res>
    extends _$SignaturesResultCopyWithImpl<$Res>
    implements _$$_RequestDeclinedCopyWith<$Res> {
  __$$_RequestDeclinedCopyWithImpl(
      _$_RequestDeclined _value, $Res Function(_$_RequestDeclined) _then)
      : super(_value, (v) => _then(v as _$_RequestDeclined));

  @override
  _$_RequestDeclined get _value => super._value as _$_RequestDeclined;
}

/// @nodoc

class _$_RequestDeclined extends _RequestDeclined {
  const _$_RequestDeclined() : super._();

  @override
  String toString() {
    return 'SignaturesResult.requestDeclined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestDeclined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) {
    return requestDeclined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) {
    return requestDeclined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (requestDeclined != null) {
      return requestDeclined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) {
    return requestDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) {
    return requestDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (requestDeclined != null) {
      return requestDeclined(this);
    }
    return orElse();
  }
}

abstract class _RequestDeclined extends SignaturesResult {
  const factory _RequestDeclined() = _$_RequestDeclined;
  const _RequestDeclined._() : super._();
}

/// @nodoc
abstract class _$$_InvalidPayloadsCopyWith<$Res> {
  factory _$$_InvalidPayloadsCopyWith(
          _$_InvalidPayloads value, $Res Function(_$_InvalidPayloads) then) =
      __$$_InvalidPayloadsCopyWithImpl<$Res>;
  $Res call({List<bool> valid});
}

/// @nodoc
class __$$_InvalidPayloadsCopyWithImpl<$Res>
    extends _$SignaturesResultCopyWithImpl<$Res>
    implements _$$_InvalidPayloadsCopyWith<$Res> {
  __$$_InvalidPayloadsCopyWithImpl(
      _$_InvalidPayloads _value, $Res Function(_$_InvalidPayloads) _then)
      : super(_value, (v) => _then(v as _$_InvalidPayloads));

  @override
  _$_InvalidPayloads get _value => super._value as _$_InvalidPayloads;

  @override
  $Res call({
    Object? valid = freezed,
  }) {
    return _then(_$_InvalidPayloads(
      valid: valid == freezed
          ? _value._valid
          : valid // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$_InvalidPayloads extends _InvalidPayloads {
  const _$_InvalidPayloads({required final List<bool> valid})
      : _valid = valid,
        super._();

  final List<bool> _valid;
  @override
  List<bool> get valid {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valid);
  }

  @override
  String toString() {
    return 'SignaturesResult.invalidPayloads(valid: $valid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidPayloads &&
            const DeepCollectionEquality().equals(other._valid, _valid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_valid));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidPayloadsCopyWith<_$_InvalidPayloads> get copyWith =>
      __$$_InvalidPayloadsCopyWithImpl<_$_InvalidPayloads>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) {
    return invalidPayloads(valid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) {
    return invalidPayloads?.call(valid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (invalidPayloads != null) {
      return invalidPayloads(valid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) {
    return invalidPayloads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) {
    return invalidPayloads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (invalidPayloads != null) {
      return invalidPayloads(this);
    }
    return orElse();
  }
}

abstract class _InvalidPayloads extends SignaturesResult {
  const factory _InvalidPayloads({required final List<bool> valid}) =
      _$_InvalidPayloads;
  const _InvalidPayloads._() : super._();

  List<bool> get valid;
  @JsonKey(ignore: true)
  _$$_InvalidPayloadsCopyWith<_$_InvalidPayloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TooManyPayloadsCopyWith<$Res> {
  factory _$$_TooManyPayloadsCopyWith(
          _$_TooManyPayloads value, $Res Function(_$_TooManyPayloads) then) =
      __$$_TooManyPayloadsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TooManyPayloadsCopyWithImpl<$Res>
    extends _$SignaturesResultCopyWithImpl<$Res>
    implements _$$_TooManyPayloadsCopyWith<$Res> {
  __$$_TooManyPayloadsCopyWithImpl(
      _$_TooManyPayloads _value, $Res Function(_$_TooManyPayloads) _then)
      : super(_value, (v) => _then(v as _$_TooManyPayloads));

  @override
  _$_TooManyPayloads get _value => super._value as _$_TooManyPayloads;
}

/// @nodoc

class _$_TooManyPayloads extends _TooManyPayloads {
  const _$_TooManyPayloads() : super._();

  @override
  String toString() {
    return 'SignaturesResult.tooManyPayloads()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TooManyPayloads);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) {
    return tooManyPayloads();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) {
    return tooManyPayloads?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (tooManyPayloads != null) {
      return tooManyPayloads();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) {
    return tooManyPayloads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) {
    return tooManyPayloads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (tooManyPayloads != null) {
      return tooManyPayloads(this);
    }
    return orElse();
  }
}

abstract class _TooManyPayloads extends SignaturesResult {
  const factory _TooManyPayloads() = _$_TooManyPayloads;
  const _TooManyPayloads._() : super._();
}

/// @nodoc
abstract class _$$_AuthorizationNotValidCopyWith<$Res> {
  factory _$$_AuthorizationNotValidCopyWith(_$_AuthorizationNotValid value,
          $Res Function(_$_AuthorizationNotValid) then) =
      __$$_AuthorizationNotValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizationNotValidCopyWithImpl<$Res>
    extends _$SignaturesResultCopyWithImpl<$Res>
    implements _$$_AuthorizationNotValidCopyWith<$Res> {
  __$$_AuthorizationNotValidCopyWithImpl(_$_AuthorizationNotValid _value,
      $Res Function(_$_AuthorizationNotValid) _then)
      : super(_value, (v) => _then(v as _$_AuthorizationNotValid));

  @override
  _$_AuthorizationNotValid get _value =>
      super._value as _$_AuthorizationNotValid;
}

/// @nodoc

class _$_AuthorizationNotValid extends _AuthorizationNotValid {
  const _$_AuthorizationNotValid() : super._();

  @override
  String toString() {
    return 'SignaturesResult.authorizationNotValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthorizationNotValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures) $default, {
    required TResult Function() requestDeclined,
    required TResult Function(List<bool> valid) invalidPayloads,
    required TResult Function() tooManyPayloads,
    required TResult Function() authorizationNotValid,
  }) {
    return authorizationNotValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
  }) {
    return authorizationNotValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Uint8List> signatures)? $default, {
    TResult Function()? requestDeclined,
    TResult Function(List<bool> valid)? invalidPayloads,
    TResult Function()? tooManyPayloads,
    TResult Function()? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (authorizationNotValid != null) {
      return authorizationNotValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignaturesResult value) $default, {
    required TResult Function(_RequestDeclined value) requestDeclined,
    required TResult Function(_InvalidPayloads value) invalidPayloads,
    required TResult Function(_TooManyPayloads value) tooManyPayloads,
    required TResult Function(_AuthorizationNotValid value)
        authorizationNotValid,
  }) {
    return authorizationNotValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
  }) {
    return authorizationNotValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignaturesResult value)? $default, {
    TResult Function(_RequestDeclined value)? requestDeclined,
    TResult Function(_InvalidPayloads value)? invalidPayloads,
    TResult Function(_TooManyPayloads value)? tooManyPayloads,
    TResult Function(_AuthorizationNotValid value)? authorizationNotValid,
    required TResult orElse(),
  }) {
    if (authorizationNotValid != null) {
      return authorizationNotValid(this);
    }
    return orElse();
  }
}

abstract class _AuthorizationNotValid extends SignaturesResult {
  const factory _AuthorizationNotValid() = _$_AuthorizationNotValid;
  const _AuthorizationNotValid._() : super._();
}
