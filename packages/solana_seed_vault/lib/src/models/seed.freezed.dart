// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Seed {
  int get authToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Purpose get purpose => throw _privateConstructorUsedError;
  List<Account> get accounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeedCopyWith<Seed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeedCopyWith<$Res> {
  factory $SeedCopyWith(Seed value, $Res Function(Seed) then) =
      _$SeedCopyWithImpl<$Res, Seed>;
  @useResult
  $Res call(
      {int authToken, String name, Purpose purpose, List<Account> accounts});
}

/// @nodoc
class _$SeedCopyWithImpl<$Res, $Val extends Seed>
    implements $SeedCopyWith<$Res> {
  _$SeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? name = null,
    Object? purpose = null,
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as Purpose,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeedCopyWith<$Res> implements $SeedCopyWith<$Res> {
  factory _$$_SeedCopyWith(_$_Seed value, $Res Function(_$_Seed) then) =
      __$$_SeedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int authToken, String name, Purpose purpose, List<Account> accounts});
}

/// @nodoc
class __$$_SeedCopyWithImpl<$Res> extends _$SeedCopyWithImpl<$Res, _$_Seed>
    implements _$$_SeedCopyWith<$Res> {
  __$$_SeedCopyWithImpl(_$_Seed _value, $Res Function(_$_Seed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? name = null,
    Object? purpose = null,
    Object? accounts = null,
  }) {
    return _then(_$_Seed(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as Purpose,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_Seed implements _Seed {
  const _$_Seed(
      {required this.authToken,
      required this.name,
      required this.purpose,
      required final List<Account> accounts})
      : _accounts = accounts;

  @override
  final int authToken;
  @override
  final String name;
  @override
  final Purpose purpose;
  final List<Account> _accounts;
  @override
  List<Account> get accounts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'Seed(authToken: $authToken, name: $name, purpose: $purpose, accounts: $accounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Seed &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken, name, purpose,
      const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeedCopyWith<_$_Seed> get copyWith =>
      __$$_SeedCopyWithImpl<_$_Seed>(this, _$identity);
}

abstract class _Seed implements Seed {
  const factory _Seed(
      {required final int authToken,
      required final String name,
      required final Purpose purpose,
      required final List<Account> accounts}) = _$_Seed;

  @override
  int get authToken;
  @override
  String get name;
  @override
  Purpose get purpose;
  @override
  List<Account> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$_SeedCopyWith<_$_Seed> get copyWith => throw _privateConstructorUsedError;
}
