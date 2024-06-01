import 'package:decimal/decimal.dart';
import 'package:dfunc/dfunc.dart';
import 'package:espressocash_api/espressocash_api.dart' hide JupiterPriceClient;

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../accounts/auth_scope.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../../tokens/token_list.dart';
import 'jupiter_client.dart';

@Singleton(scope: authScope)
class ConversionRatesRepository extends ChangeNotifier {
  ConversionRatesRepository({
    required SharedPreferences storage,
    required EspressoCashClient ecClient,
    required JupiterPriceClient jupiterClient,
  })  : _ecClient = ecClient,
        _jupiterClient = jupiterClient,
        _storage = storage;

  final BehaviorSubject<IMap<FiatCurrency, IMap<CryptoCurrency, Decimal>>>
      _value = BehaviorSubject.seeded(const IMapConst({}));

  final JupiterPriceClient _jupiterClient;
  final EspressoCashClient _ecClient;
  final SharedPreferences _storage;

  @PostConstruct()
  void init() {
    final rate = _storage.getDouble(_usdcRateKey);

    if (rate == null) return;

    _value.add(
      IMapConst({
        Currency.usd: IMapConst({
          Currency.usdc: Decimal.tryParse(rate.toString()) ?? Decimal.zero,
        }),
      }),
    );
    notifyListeners();
  }

  Decimal? readRate(CryptoCurrency crypto, {required FiatCurrency to}) =>
      _value.value[to]?[crypto];

  Stream<Decimal?> watchRate(
    CryptoCurrency crypto, {
    required FiatCurrency to,
  }) =>
      _value.map((v) => v[to]?[crypto]).distinct();

  AsyncResult<void> _fetchUsdc() => tryEitherAsync((_) async {
        final data = await _ecClient.getRates().letAsync((p) => p['usdc']);
        if (data == null) return;

        final previous = _value.value[Currency.usd] ?? const IMapConst({});
        final newValue = _value.value.add(
          Currency.usd,
          previous.addAll(
            {
              Currency.usdc: data.let((s) => Decimal.parse(s.toString())),
            }.toIMap(),
          ),
        );
        _value.add(newValue);

        await _storage.setDouble(_usdcRateKey, data);

        notifyListeners();
      });

  AsyncResult<void> _fetchTokens(
    FiatCurrency currency,
    Iterable<Token> tokens,
  ) =>
      tryEitherAsync((_) async {
        final ids = await Stream.fromIterable(tokens.addresses)
            .bufferCount(_maxIds)
            .toList();

        final results = await Future.wait(
          ids.map((ids) async {
            final request = TokenRateRequestDto(
              ids: ids.lock,
            );

            return _jupiterClient.getPrice(request);
          }),
        );

        final Map<String, TokenPricesMapDto> conversionRates = {};
        for (final element in results) {
          conversionRates.addAll(element.data);
        }

        final previous = _value.value[currency] ?? const IMapConst({});
        final newValue = _value.value.add(
          currency,
          previous.addAll(
            conversionRates.keys.fold<IMap<CryptoCurrency, Decimal>>(
                const IMapConst({}), (map, value) {
              final data = conversionRates[value];
              if (data == null) return map;
              final rate = data.price;

              return map.add(
                CryptoCurrency(
                  token: tokens.firstWhere((t) => t.symbol == value),
                ),
                Decimal.parse(rate.toString()),
              );
            }),
          ),
        );

        _value.add(newValue);
        notifyListeners();
      });

  AsyncResult<void> refresh(FiatCurrency currency, Iterable<Token> tokens) =>
      tryEitherAsync((_) async {
        if (currency != Currency.usd) throw UnimplementedError();

        await Future.wait([
          _fetchUsdc(),
          _fetchTokens(currency, tokens),
        ]);
      });

  @override
  @disposeMethod
  void dispose() {
    _value.close();
    _storage.remove(_usdcRateKey);
    super.dispose();
  }
}

const _usdcRateKey = 'usdcRate';
const _maxIds = 100;
