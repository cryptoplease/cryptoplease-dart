import 'package:espressocash_api/espressocash_api.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../accounts/models/ec_wallet.dart';
import '../../authenticated/auth_scope.dart';
import '../data/profile_repository.dart';

@Singleton(scope: authScope)
class WalletService implements Disposable {
  WalletService(
    this._sharedPreferences,
    this._profileRepository,
    this._cryptopleaseClient,
    this._wallet,
  ) {
    _profileRepository.onCountryUpdate = _handleCountryUpdate;
  }

  final CryptopleaseClient _cryptopleaseClient;
  final SharedPreferences _sharedPreferences;
  final ProfileRepository _profileRepository;
  final ECWallet _wallet;

  bool get _hasSyncedWalletCountry =>
      _sharedPreferences.getBool(_countrySyncedKey) ?? false;

  @PostConstruct(preResolve: true)
  void init() {
    if (_hasSyncedWalletCountry) return;

    _handleCountryUpdate();
  }

  void _handleCountryUpdate() {
    final countryCode = _profileRepository.country;

    if (countryCode != null) {
      final wallet = _wallet.address;

      _cryptopleaseClient.updateUserWalletCountry(
        WalletCountryRequestDto(
          walletAddress: wallet,
          countryCode: countryCode,
        ),
      );

      _sharedPreferences.setBool(_countrySyncedKey, true);
    }
  }

  @override
  void onDispose() {
    _profileRepository.removeListener(_handleCountryUpdate);
    _sharedPreferences.remove(_countrySyncedKey);
  }
}

const _countrySyncedKey = 'walletCountrySynced';