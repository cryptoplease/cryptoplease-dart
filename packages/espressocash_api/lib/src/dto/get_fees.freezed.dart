// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_fees.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeesResponseDto _$GetFeesResponseDtoFromJson(Map<String, dynamic> json) {
  return _GetFeesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetFeesResponseDto {
  DirectPaymentFeeDto get directPayment => throw _privateConstructorUsedError;
  int get escrowPayment => throw _privateConstructorUsedError;
  int get escrowPaymentAtaFee => throw _privateConstructorUsedError;
  int get splitKeyPayment => throw _privateConstructorUsedError;
  WithdrawFeeDto get withdrawFeePercentage =>
      throw _privateConstructorUsedError;

  /// Serializes this GetFeesResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeesResponseDtoCopyWith<GetFeesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeesResponseDtoCopyWith<$Res> {
  factory $GetFeesResponseDtoCopyWith(
          GetFeesResponseDto value, $Res Function(GetFeesResponseDto) then) =
      _$GetFeesResponseDtoCopyWithImpl<$Res, GetFeesResponseDto>;
  @useResult
  $Res call(
      {DirectPaymentFeeDto directPayment,
      int escrowPayment,
      int escrowPaymentAtaFee,
      int splitKeyPayment,
      WithdrawFeeDto withdrawFeePercentage});

  $DirectPaymentFeeDtoCopyWith<$Res> get directPayment;
  $WithdrawFeeDtoCopyWith<$Res> get withdrawFeePercentage;
}

/// @nodoc
class _$GetFeesResponseDtoCopyWithImpl<$Res, $Val extends GetFeesResponseDto>
    implements $GetFeesResponseDtoCopyWith<$Res> {
  _$GetFeesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directPayment = null,
    Object? escrowPayment = null,
    Object? escrowPaymentAtaFee = null,
    Object? splitKeyPayment = null,
    Object? withdrawFeePercentage = null,
  }) {
    return _then(_value.copyWith(
      directPayment: null == directPayment
          ? _value.directPayment
          : directPayment // ignore: cast_nullable_to_non_nullable
              as DirectPaymentFeeDto,
      escrowPayment: null == escrowPayment
          ? _value.escrowPayment
          : escrowPayment // ignore: cast_nullable_to_non_nullable
              as int,
      escrowPaymentAtaFee: null == escrowPaymentAtaFee
          ? _value.escrowPaymentAtaFee
          : escrowPaymentAtaFee // ignore: cast_nullable_to_non_nullable
              as int,
      splitKeyPayment: null == splitKeyPayment
          ? _value.splitKeyPayment
          : splitKeyPayment // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawFeePercentage: null == withdrawFeePercentage
          ? _value.withdrawFeePercentage
          : withdrawFeePercentage // ignore: cast_nullable_to_non_nullable
              as WithdrawFeeDto,
    ) as $Val);
  }

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectPaymentFeeDtoCopyWith<$Res> get directPayment {
    return $DirectPaymentFeeDtoCopyWith<$Res>(_value.directPayment, (value) {
      return _then(_value.copyWith(directPayment: value) as $Val);
    });
  }

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WithdrawFeeDtoCopyWith<$Res> get withdrawFeePercentage {
    return $WithdrawFeeDtoCopyWith<$Res>(_value.withdrawFeePercentage, (value) {
      return _then(_value.copyWith(withdrawFeePercentage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeesResponseDtoImplCopyWith<$Res>
    implements $GetFeesResponseDtoCopyWith<$Res> {
  factory _$$GetFeesResponseDtoImplCopyWith(_$GetFeesResponseDtoImpl value,
          $Res Function(_$GetFeesResponseDtoImpl) then) =
      __$$GetFeesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DirectPaymentFeeDto directPayment,
      int escrowPayment,
      int escrowPaymentAtaFee,
      int splitKeyPayment,
      WithdrawFeeDto withdrawFeePercentage});

  @override
  $DirectPaymentFeeDtoCopyWith<$Res> get directPayment;
  @override
  $WithdrawFeeDtoCopyWith<$Res> get withdrawFeePercentage;
}

/// @nodoc
class __$$GetFeesResponseDtoImplCopyWithImpl<$Res>
    extends _$GetFeesResponseDtoCopyWithImpl<$Res, _$GetFeesResponseDtoImpl>
    implements _$$GetFeesResponseDtoImplCopyWith<$Res> {
  __$$GetFeesResponseDtoImplCopyWithImpl(_$GetFeesResponseDtoImpl _value,
      $Res Function(_$GetFeesResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directPayment = null,
    Object? escrowPayment = null,
    Object? escrowPaymentAtaFee = null,
    Object? splitKeyPayment = null,
    Object? withdrawFeePercentage = null,
  }) {
    return _then(_$GetFeesResponseDtoImpl(
      directPayment: null == directPayment
          ? _value.directPayment
          : directPayment // ignore: cast_nullable_to_non_nullable
              as DirectPaymentFeeDto,
      escrowPayment: null == escrowPayment
          ? _value.escrowPayment
          : escrowPayment // ignore: cast_nullable_to_non_nullable
              as int,
      escrowPaymentAtaFee: null == escrowPaymentAtaFee
          ? _value.escrowPaymentAtaFee
          : escrowPaymentAtaFee // ignore: cast_nullable_to_non_nullable
              as int,
      splitKeyPayment: null == splitKeyPayment
          ? _value.splitKeyPayment
          : splitKeyPayment // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawFeePercentage: null == withdrawFeePercentage
          ? _value.withdrawFeePercentage
          : withdrawFeePercentage // ignore: cast_nullable_to_non_nullable
              as WithdrawFeeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeesResponseDtoImpl implements _GetFeesResponseDto {
  const _$GetFeesResponseDtoImpl(
      {required this.directPayment,
      required this.escrowPayment,
      required this.escrowPaymentAtaFee,
      required this.splitKeyPayment,
      this.withdrawFeePercentage = const WithdrawFeeDto()});

  factory _$GetFeesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeesResponseDtoImplFromJson(json);

  @override
  final DirectPaymentFeeDto directPayment;
  @override
  final int escrowPayment;
  @override
  final int escrowPaymentAtaFee;
  @override
  final int splitKeyPayment;
  @override
  @JsonKey()
  final WithdrawFeeDto withdrawFeePercentage;

  @override
  String toString() {
    return 'GetFeesResponseDto(directPayment: $directPayment, escrowPayment: $escrowPayment, escrowPaymentAtaFee: $escrowPaymentAtaFee, splitKeyPayment: $splitKeyPayment, withdrawFeePercentage: $withdrawFeePercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeesResponseDtoImpl &&
            (identical(other.directPayment, directPayment) ||
                other.directPayment == directPayment) &&
            (identical(other.escrowPayment, escrowPayment) ||
                other.escrowPayment == escrowPayment) &&
            (identical(other.escrowPaymentAtaFee, escrowPaymentAtaFee) ||
                other.escrowPaymentAtaFee == escrowPaymentAtaFee) &&
            (identical(other.splitKeyPayment, splitKeyPayment) ||
                other.splitKeyPayment == splitKeyPayment) &&
            (identical(other.withdrawFeePercentage, withdrawFeePercentage) ||
                other.withdrawFeePercentage == withdrawFeePercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, directPayment, escrowPayment,
      escrowPaymentAtaFee, splitKeyPayment, withdrawFeePercentage);

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeesResponseDtoImplCopyWith<_$GetFeesResponseDtoImpl> get copyWith =>
      __$$GetFeesResponseDtoImplCopyWithImpl<_$GetFeesResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetFeesResponseDto implements GetFeesResponseDto {
  const factory _GetFeesResponseDto(
      {required final DirectPaymentFeeDto directPayment,
      required final int escrowPayment,
      required final int escrowPaymentAtaFee,
      required final int splitKeyPayment,
      final WithdrawFeeDto withdrawFeePercentage}) = _$GetFeesResponseDtoImpl;

  factory _GetFeesResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetFeesResponseDtoImpl.fromJson;

  @override
  DirectPaymentFeeDto get directPayment;
  @override
  int get escrowPayment;
  @override
  int get escrowPaymentAtaFee;
  @override
  int get splitKeyPayment;
  @override
  WithdrawFeeDto get withdrawFeePercentage;

  /// Create a copy of GetFeesResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeesResponseDtoImplCopyWith<_$GetFeesResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectPaymentFeeDto _$DirectPaymentFeeDtoFromJson(Map<String, dynamic> json) {
  return _DirectPaymentFeeDto.fromJson(json);
}

/// @nodoc
mixin _$DirectPaymentFeeDto {
  int get ataExists => throw _privateConstructorUsedError;
  int get ataDoesNotExist => throw _privateConstructorUsedError;

  /// Serializes this DirectPaymentFeeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectPaymentFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectPaymentFeeDtoCopyWith<DirectPaymentFeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectPaymentFeeDtoCopyWith<$Res> {
  factory $DirectPaymentFeeDtoCopyWith(
          DirectPaymentFeeDto value, $Res Function(DirectPaymentFeeDto) then) =
      _$DirectPaymentFeeDtoCopyWithImpl<$Res, DirectPaymentFeeDto>;
  @useResult
  $Res call({int ataExists, int ataDoesNotExist});
}

/// @nodoc
class _$DirectPaymentFeeDtoCopyWithImpl<$Res, $Val extends DirectPaymentFeeDto>
    implements $DirectPaymentFeeDtoCopyWith<$Res> {
  _$DirectPaymentFeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectPaymentFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ataExists = null,
    Object? ataDoesNotExist = null,
  }) {
    return _then(_value.copyWith(
      ataExists: null == ataExists
          ? _value.ataExists
          : ataExists // ignore: cast_nullable_to_non_nullable
              as int,
      ataDoesNotExist: null == ataDoesNotExist
          ? _value.ataDoesNotExist
          : ataDoesNotExist // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectPaymentFeeDtoImplCopyWith<$Res>
    implements $DirectPaymentFeeDtoCopyWith<$Res> {
  factory _$$DirectPaymentFeeDtoImplCopyWith(_$DirectPaymentFeeDtoImpl value,
          $Res Function(_$DirectPaymentFeeDtoImpl) then) =
      __$$DirectPaymentFeeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ataExists, int ataDoesNotExist});
}

/// @nodoc
class __$$DirectPaymentFeeDtoImplCopyWithImpl<$Res>
    extends _$DirectPaymentFeeDtoCopyWithImpl<$Res, _$DirectPaymentFeeDtoImpl>
    implements _$$DirectPaymentFeeDtoImplCopyWith<$Res> {
  __$$DirectPaymentFeeDtoImplCopyWithImpl(_$DirectPaymentFeeDtoImpl _value,
      $Res Function(_$DirectPaymentFeeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectPaymentFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ataExists = null,
    Object? ataDoesNotExist = null,
  }) {
    return _then(_$DirectPaymentFeeDtoImpl(
      ataExists: null == ataExists
          ? _value.ataExists
          : ataExists // ignore: cast_nullable_to_non_nullable
              as int,
      ataDoesNotExist: null == ataDoesNotExist
          ? _value.ataDoesNotExist
          : ataDoesNotExist // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectPaymentFeeDtoImpl implements _DirectPaymentFeeDto {
  const _$DirectPaymentFeeDtoImpl(
      {required this.ataExists, required this.ataDoesNotExist});

  factory _$DirectPaymentFeeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectPaymentFeeDtoImplFromJson(json);

  @override
  final int ataExists;
  @override
  final int ataDoesNotExist;

  @override
  String toString() {
    return 'DirectPaymentFeeDto(ataExists: $ataExists, ataDoesNotExist: $ataDoesNotExist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectPaymentFeeDtoImpl &&
            (identical(other.ataExists, ataExists) ||
                other.ataExists == ataExists) &&
            (identical(other.ataDoesNotExist, ataDoesNotExist) ||
                other.ataDoesNotExist == ataDoesNotExist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ataExists, ataDoesNotExist);

  /// Create a copy of DirectPaymentFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectPaymentFeeDtoImplCopyWith<_$DirectPaymentFeeDtoImpl> get copyWith =>
      __$$DirectPaymentFeeDtoImplCopyWithImpl<_$DirectPaymentFeeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectPaymentFeeDtoImplToJson(
      this,
    );
  }
}

abstract class _DirectPaymentFeeDto implements DirectPaymentFeeDto {
  const factory _DirectPaymentFeeDto(
      {required final int ataExists,
      required final int ataDoesNotExist}) = _$DirectPaymentFeeDtoImpl;

  factory _DirectPaymentFeeDto.fromJson(Map<String, dynamic> json) =
      _$DirectPaymentFeeDtoImpl.fromJson;

  @override
  int get ataExists;
  @override
  int get ataDoesNotExist;

  /// Create a copy of DirectPaymentFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectPaymentFeeDtoImplCopyWith<_$DirectPaymentFeeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WithdrawFeeDto _$WithdrawFeeDtoFromJson(Map<String, dynamic> json) {
  return _WithdrawFeeDto.fromJson(json);
}

/// @nodoc
mixin _$WithdrawFeeDto {
  double get scalex => throw _privateConstructorUsedError;
  double get kado => throw _privateConstructorUsedError;
  double get rampNetwork => throw _privateConstructorUsedError;
  double get coinflow => throw _privateConstructorUsedError;
  double get guardarian => throw _privateConstructorUsedError;

  /// Serializes this WithdrawFeeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawFeeDtoCopyWith<WithdrawFeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawFeeDtoCopyWith<$Res> {
  factory $WithdrawFeeDtoCopyWith(
          WithdrawFeeDto value, $Res Function(WithdrawFeeDto) then) =
      _$WithdrawFeeDtoCopyWithImpl<$Res, WithdrawFeeDto>;
  @useResult
  $Res call(
      {double scalex,
      double kado,
      double rampNetwork,
      double coinflow,
      double guardarian});
}

/// @nodoc
class _$WithdrawFeeDtoCopyWithImpl<$Res, $Val extends WithdrawFeeDto>
    implements $WithdrawFeeDtoCopyWith<$Res> {
  _$WithdrawFeeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scalex = null,
    Object? kado = null,
    Object? rampNetwork = null,
    Object? coinflow = null,
    Object? guardarian = null,
  }) {
    return _then(_value.copyWith(
      scalex: null == scalex
          ? _value.scalex
          : scalex // ignore: cast_nullable_to_non_nullable
              as double,
      kado: null == kado
          ? _value.kado
          : kado // ignore: cast_nullable_to_non_nullable
              as double,
      rampNetwork: null == rampNetwork
          ? _value.rampNetwork
          : rampNetwork // ignore: cast_nullable_to_non_nullable
              as double,
      coinflow: null == coinflow
          ? _value.coinflow
          : coinflow // ignore: cast_nullable_to_non_nullable
              as double,
      guardarian: null == guardarian
          ? _value.guardarian
          : guardarian // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawFeeDtoImplCopyWith<$Res>
    implements $WithdrawFeeDtoCopyWith<$Res> {
  factory _$$WithdrawFeeDtoImplCopyWith(_$WithdrawFeeDtoImpl value,
          $Res Function(_$WithdrawFeeDtoImpl) then) =
      __$$WithdrawFeeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scalex,
      double kado,
      double rampNetwork,
      double coinflow,
      double guardarian});
}

/// @nodoc
class __$$WithdrawFeeDtoImplCopyWithImpl<$Res>
    extends _$WithdrawFeeDtoCopyWithImpl<$Res, _$WithdrawFeeDtoImpl>
    implements _$$WithdrawFeeDtoImplCopyWith<$Res> {
  __$$WithdrawFeeDtoImplCopyWithImpl(
      _$WithdrawFeeDtoImpl _value, $Res Function(_$WithdrawFeeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scalex = null,
    Object? kado = null,
    Object? rampNetwork = null,
    Object? coinflow = null,
    Object? guardarian = null,
  }) {
    return _then(_$WithdrawFeeDtoImpl(
      scalex: null == scalex
          ? _value.scalex
          : scalex // ignore: cast_nullable_to_non_nullable
              as double,
      kado: null == kado
          ? _value.kado
          : kado // ignore: cast_nullable_to_non_nullable
              as double,
      rampNetwork: null == rampNetwork
          ? _value.rampNetwork
          : rampNetwork // ignore: cast_nullable_to_non_nullable
              as double,
      coinflow: null == coinflow
          ? _value.coinflow
          : coinflow // ignore: cast_nullable_to_non_nullable
              as double,
      guardarian: null == guardarian
          ? _value.guardarian
          : guardarian // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawFeeDtoImpl implements _WithdrawFeeDto {
  const _$WithdrawFeeDtoImpl(
      {this.scalex = 0,
      this.kado = 0,
      this.rampNetwork = 0,
      this.coinflow = 0,
      this.guardarian = 0});

  factory _$WithdrawFeeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawFeeDtoImplFromJson(json);

  @override
  @JsonKey()
  final double scalex;
  @override
  @JsonKey()
  final double kado;
  @override
  @JsonKey()
  final double rampNetwork;
  @override
  @JsonKey()
  final double coinflow;
  @override
  @JsonKey()
  final double guardarian;

  @override
  String toString() {
    return 'WithdrawFeeDto(scalex: $scalex, kado: $kado, rampNetwork: $rampNetwork, coinflow: $coinflow, guardarian: $guardarian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawFeeDtoImpl &&
            (identical(other.scalex, scalex) || other.scalex == scalex) &&
            (identical(other.kado, kado) || other.kado == kado) &&
            (identical(other.rampNetwork, rampNetwork) ||
                other.rampNetwork == rampNetwork) &&
            (identical(other.coinflow, coinflow) ||
                other.coinflow == coinflow) &&
            (identical(other.guardarian, guardarian) ||
                other.guardarian == guardarian));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, scalex, kado, rampNetwork, coinflow, guardarian);

  /// Create a copy of WithdrawFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawFeeDtoImplCopyWith<_$WithdrawFeeDtoImpl> get copyWith =>
      __$$WithdrawFeeDtoImplCopyWithImpl<_$WithdrawFeeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawFeeDtoImplToJson(
      this,
    );
  }
}

abstract class _WithdrawFeeDto implements WithdrawFeeDto {
  const factory _WithdrawFeeDto(
      {final double scalex,
      final double kado,
      final double rampNetwork,
      final double coinflow,
      final double guardarian}) = _$WithdrawFeeDtoImpl;

  factory _WithdrawFeeDto.fromJson(Map<String, dynamic> json) =
      _$WithdrawFeeDtoImpl.fromJson;

  @override
  double get scalex;
  @override
  double get kado;
  @override
  double get rampNetwork;
  @override
  double get coinflow;
  @override
  double get guardarian;

  /// Create a copy of WithdrawFeeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawFeeDtoImplCopyWith<_$WithdrawFeeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
