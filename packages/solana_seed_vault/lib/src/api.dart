// Autogenerated from Pigeon (v3.2.9), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class AccountDto {
  AccountDto({
    required this.id,
    required this.name,
    required this.derivationPath,
    required this.publicKeyEncoded,
    required this.isUserWallet,
    required this.isValid,
  });

  int id;
  String name;
  String derivationPath;
  String publicKeyEncoded;
  bool isUserWallet;
  bool isValid;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['id'] = id;
    pigeonMap['name'] = name;
    pigeonMap['derivationPath'] = derivationPath;
    pigeonMap['publicKeyEncoded'] = publicKeyEncoded;
    pigeonMap['isUserWallet'] = isUserWallet;
    pigeonMap['isValid'] = isValid;
    return pigeonMap;
  }

  static AccountDto decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return AccountDto(
      id: pigeonMap['id']! as int,
      name: pigeonMap['name']! as String,
      derivationPath: pigeonMap['derivationPath']! as String,
      publicKeyEncoded: pigeonMap['publicKeyEncoded']! as String,
      isUserWallet: pigeonMap['isUserWallet']! as bool,
      isValid: pigeonMap['isValid']! as bool,
    );
  }
}

class SeedDto {
  SeedDto({
    required this.authToken,
    required this.name,
    required this.purpose,
    required this.accounts,
  });

  int authToken;
  String name;
  int purpose;
  List<AccountDto?> accounts;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['authToken'] = authToken;
    pigeonMap['name'] = name;
    pigeonMap['purpose'] = purpose;
    pigeonMap['accounts'] = accounts;
    return pigeonMap;
  }

  static SeedDto decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return SeedDto(
      authToken: pigeonMap['authToken']! as int,
      name: pigeonMap['name']! as String,
      purpose: pigeonMap['purpose']! as int,
      accounts: (pigeonMap['accounts'] as List<Object?>?)!.cast<AccountDto?>(),
    );
  }
}

class ImplementationLimitsDto {
  ImplementationLimitsDto({
    required this.maxBip32PathDepth,
    this.maxSigningRequests,
    this.maxRequestedSignatures,
    this.maxRequestedPublicKeys,
  });

  int maxBip32PathDepth;
  int? maxSigningRequests;
  int? maxRequestedSignatures;
  int? maxRequestedPublicKeys;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['maxBip32PathDepth'] = maxBip32PathDepth;
    pigeonMap['maxSigningRequests'] = maxSigningRequests;
    pigeonMap['maxRequestedSignatures'] = maxRequestedSignatures;
    pigeonMap['maxRequestedPublicKeys'] = maxRequestedPublicKeys;
    return pigeonMap;
  }

  static ImplementationLimitsDto decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return ImplementationLimitsDto(
      maxBip32PathDepth: pigeonMap['maxBip32PathDepth']! as int,
      maxSigningRequests: pigeonMap['maxSigningRequests'] as int?,
      maxRequestedSignatures: pigeonMap['maxRequestedSignatures'] as int?,
      maxRequestedPublicKeys: pigeonMap['maxRequestedPublicKeys'] as int?,
    );
  }
}

class BipLevelDto {
  BipLevelDto({
    required this.index,
    required this.hardened,
  });

  int index;
  bool hardened;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['index'] = index;
    pigeonMap['hardened'] = hardened;
    return pigeonMap;
  }

  static BipLevelDto decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return BipLevelDto(
      index: pigeonMap['index']! as int,
      hardened: pigeonMap['hardened']! as bool,
    );
  }
}

class Bip44DerivationDto {
  Bip44DerivationDto({
    this.account,
    this.change,
    this.addressIndex,
  });

  BipLevelDto? account;
  BipLevelDto? change;
  BipLevelDto? addressIndex;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['account'] = account?.encode();
    pigeonMap['change'] = change?.encode();
    pigeonMap['addressIndex'] = addressIndex?.encode();
    return pigeonMap;
  }

  static Bip44DerivationDto decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Bip44DerivationDto(
      account: pigeonMap['account'] != null
          ? BipLevelDto.decode(pigeonMap['account']!)
          : null,
      change: pigeonMap['change'] != null
          ? BipLevelDto.decode(pigeonMap['change']!)
          : null,
      addressIndex: pigeonMap['addressIndex'] != null
          ? BipLevelDto.decode(pigeonMap['addressIndex']!)
          : null,
    );
  }
}

class _WalletApiHostCodec extends StandardMessageCodec {
  const _WalletApiHostCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is AccountDto) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is ImplementationLimitsDto) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is SeedDto) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return AccountDto.decode(readValue(buffer)!);
      
      case 129:       
        return ImplementationLimitsDto.decode(readValue(buffer)!);
      
      case 130:       
        return SeedDto.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class WalletApiHost {
  /// Constructor for [WalletApiHost].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  WalletApiHost({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _WalletApiHostCodec();

  Future<ImplementationLimitsDto> getImplementationLimitsForPurpose(int arg_purpose) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.getImplementationLimitsForPurpose', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_purpose]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as ImplementationLimitsDto?)!;
    }
  }

  Future<bool> hasUnauthorizedSeedsForPurpose(int arg_purpose) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.hasUnauthorizedSeedsForPurpose', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_purpose]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<bool> isAvailable(bool arg_allowSimulated) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.isAvailable', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_allowSimulated]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as bool?)!;
    }
  }

  Future<List<SeedDto?>> getAuthorizedSeeds() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.getAuthorizedSeeds', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<SeedDto?>();
    }
  }

  Future<List<AccountDto?>> getAccounts(int arg_authToken, bool arg_isUserWalletOnly) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.getAccounts', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_authToken, arg_isUserWalletOnly]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<AccountDto?>();
    }
  }

  Future<String> resolveDerivationPath(String arg_derivationPath, int arg_purpose) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.resolveDerivationPath', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_derivationPath, arg_purpose]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as String?)!;
    }
  }

  Future<void> deauthorizeSeed(int arg_authToken) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.deauthorizeSeed', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_authToken]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> updateAccountName(int arg_authToken, int arg_accountId, String? arg_name) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.updateAccountName', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_authToken, arg_accountId, arg_name]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> updateAccountIsUserWallet(int arg_authToken, int arg_accountId, bool arg_isUserWallet) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.updateAccountIsUserWallet', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_authToken, arg_accountId, arg_isUserWallet]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> updateAccountIsValid(int arg_authToken, int arg_accountId, bool arg_isValid) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.WalletApiHost.updateAccountIsValid', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_authToken, arg_accountId, arg_isValid]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _Bip32ApiHostCodec extends StandardMessageCodec {
  const _Bip32ApiHostCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is BipLevelDto) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return BipLevelDto.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class Bip32ApiHost {
  /// Constructor for [Bip32ApiHost].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  Bip32ApiHost({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _Bip32ApiHostCodec();

  Future<List<BipLevelDto?>> fromUri(String arg_uri) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Bip32ApiHost.fromUri', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_uri]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<BipLevelDto?>();
    }
  }

  Future<String> toUri(List<BipLevelDto?> arg_levels) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Bip32ApiHost.toUri', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_levels]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as String?)!;
    }
  }
}

class _Bip44ApiHostCodec extends StandardMessageCodec {
  const _Bip44ApiHostCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Bip44DerivationDto) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is BipLevelDto) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return Bip44DerivationDto.decode(readValue(buffer)!);
      
      case 129:       
        return BipLevelDto.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class Bip44ApiHost {
  /// Constructor for [Bip44ApiHost].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  Bip44ApiHost({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _Bip44ApiHostCodec();

  Future<Bip44DerivationDto> fromUri(String arg_uri) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Bip44ApiHost.fromUri', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_uri]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as Bip44DerivationDto?)!;
    }
  }

  Future<String> toUri(Bip44DerivationDto arg_levels) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Bip44ApiHost.toUri', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_levels]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as String?)!;
    }
  }
}
