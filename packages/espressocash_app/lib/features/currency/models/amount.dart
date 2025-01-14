import 'dart:ui';

import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../tokens/token.dart';
import 'currency.dart';

part 'amount.freezed.dart';

@freezed
sealed class Amount with _$Amount {
  factory Amount({required int value, required Currency currency}) =>
      switch (currency) {
        FiatCurrency() => Amount.fiat(value: value, fiatCurrency: currency),
        CryptoCurrency() =>
          Amount.crypto(value: value, cryptoCurrency: currency),
      };

  const factory Amount.fiat({
    required int value,
    required FiatCurrency fiatCurrency,
  }) = FiatAmount;

  const factory Amount.crypto({
    required int value,
    required CryptoCurrency cryptoCurrency,
  }) = CryptoAmount;

  factory Amount.zero({required Currency currency}) =>
      Amount(value: 0, currency: currency);

  factory Amount.fromToken({required int value, required Token token}) =>
      Amount(value: value, currency: Currency.crypto(token: token));

  factory Amount.sol({required int value}) =>
      Amount.crypto(value: value, cryptoCurrency: Currency.sol);

  factory Amount.fromDecimal({
    required Decimal value,
    required Currency currency,
  }) =>
      Amount(value: currency.decimalToInt(value), currency: currency);

  const Amount._();

  Currency get currency => switch (this) {
        FiatAmount(:final fiatCurrency) => fiatCurrency,
        CryptoAmount(:final cryptoCurrency) => cryptoCurrency,
      };

  Decimal get decimal => Decimal.fromInt(value).shift(-currency.decimals);

  bool get isZero => decimal == Decimal.zero;

  Amount operator +(Amount other) {
    _ensureSameCurrency(other);

    return Amount(value: value + other.value, currency: currency);
  }

  Amount operator -(Amount other) {
    _ensureSameCurrency(other);

    return Amount(value: value - other.value, currency: currency);
  }

  bool operator >(Amount other) {
    _ensureSameCurrency(other);

    return value > other.value;
  }

  bool operator >=(Amount other) {
    _ensureSameCurrency(other);

    return value >= other.value;
  }

  bool operator <(Amount other) {
    _ensureSameCurrency(other);

    return value < other.value;
  }

  bool operator <=(Amount other) {
    _ensureSameCurrency(other);

    return value <= other.value;
  }

  void _ensureSameCurrency(Amount other) {
    if (currency != other.currency) {
      throw ArgumentError('cannot operate on different currencies');
    }
  }
}

extension AmountExt on Amount {
  Amount convert({required Decimal rate, required Currency to}) {
    final value = decimal * rate;

    return Amount.fromDecimal(value: value, currency: to);
  }
}

extension CryptoAmountExt on CryptoAmount {
  Token get token => cryptoCurrency.token;

  CryptoAmount copyWithDecimal(Decimal decimal) =>
      copyWith(value: currency.decimalToInt(decimal));

  CryptoAmount round(int scale) => copyWithDecimal(decimal.round(scale: scale));

  CryptoAmount floor(int scale) => copyWithDecimal(decimal.floor(scale: scale));
}

extension FiatAmountExt on FiatAmount {
  FiatAmount copyWithDecimal(Decimal decimal) =>
      copyWith(value: currency.decimalToInt(decimal));
}

extension FormattedAmount on Amount {
  String formatRate(double rate, Locale locale) {
    if (rate >= 1) {
      return NumberFormat.currency(
        locale: locale.toString(),
        symbol: '',
        decimalDigits: 2,
      ).format(rate);
    }

    if (rate == 0.0 || rate >= 0.01) {
      return rate.toStringAsFixed(2);
    }

    final initialString = rate.toStringAsFixed(10);
    final decimalPointIndex = initialString.indexOf('.');
    int significantCount = 0;
    bool foundFirstNonZero = false;

    for (int i = decimalPointIndex + 1; i < initialString.length; i++) {
      if (initialString[i] != '0') {
        foundFirstNonZero = true;
        significantCount++;
      } else if (foundFirstNonZero) {
        significantCount++;
      }

      if (significantCount == 2) {
        return initialString.substring(0, i + 1);
      }
    }

    return initialString;
  }
}
