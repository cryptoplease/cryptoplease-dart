import 'package:dfunc/dfunc.dart';
import 'package:espressocash_common/espressocash_common.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../balances/data/balances_repository.dart';
import '../data/repository.dart';

@injectable
class WatchUserFiatBalance {
  const WatchUserFiatBalance(
    this._conversionRatesRepository,
    this._balancesRepository,
  );

  final ConversionRatesRepository _conversionRatesRepository;
  final BalancesRepository _balancesRepository;

  (Stream<FiatAmount?>, FiatAmount?) call() {
    const fiatCurrency = defaultFiatCurrency;
    final conversionRate =
        _conversionRatesRepository.watchRate(to: fiatCurrency);

    final balance = _balancesRepository.watch();

    return (
      Rx.combineLatest2(
        balance.$1,
        conversionRate,
        (cryptoAmount, rate) {
          if (rate == null) return null;

          return cryptoAmount.convert(rate: rate, to: fiatCurrency)
              as FiatAmount;
        },
      ).distinct(),
      _conversionRatesRepository.readRate(to: fiatCurrency)?.let(
            (rate) =>
                balance.$2.convert(rate: rate, to: fiatCurrency) as FiatAmount,
          ),
    );
  }
}
