import 'package:cryptoplease/core/currency.dart';
import 'package:cryptoplease/core/tokens/token.dart';
import 'package:decimal/decimal.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter/foundation.dart';

abstract class ConversionRatesRepository implements ChangeNotifier {
  Decimal? readRate(CryptoCurrency crypto, {required FiatCurrency to});
  Stream<Decimal?> watchRate(CryptoCurrency crypto, {required FiatCurrency to});
  AsyncResult<void> refresh(FiatCurrency currency, Iterable<Token> tokens);
}
