import 'package:solana_seed_vault/src/api.dart';

abstract class WalletPermission {
  static const accessSeedVault = 'com.solanamobile.seedvault.ACCESS_SEED_VAULT';
}

class SeedVault {
  SeedVault._(this._platform);

  final SeedVaultApiHost _platform;

  static final _instance = SeedVault._(SeedVaultApiHost());

  static SeedVault get instance => _instance;

  Future<bool> isAvailable(bool allowSimulated) =>
      _platform.isAvailable(allowSimulated);

  Future<bool> checkPermission() => _platform.checkPermission();
}
