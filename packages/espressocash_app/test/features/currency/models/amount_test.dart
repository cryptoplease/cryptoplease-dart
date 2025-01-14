import 'package:espressocash_app/features/currency/models/amount.dart';
import 'package:espressocash_app/features/currency/models/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormattedAmount', () {
    final amount = Amount.zero(currency: Currency.sol);
    const locale = Locale('en', 'US');

    group('formatRate', () {
      test('formats rates >= 1 with 2 decimal places', () {
        expect(amount.formatRate(1.0, locale), '1.00');
        expect(amount.formatRate(1.23456, locale), '1.23');
        expect(amount.formatRate(123.456, locale), '123.46');
      });

      test(
          'formats small decimals with 2 significant digits after first non-zero',
          () {
        expect(amount.formatRate(0.00123456, locale), '0.0012');
        expect(amount.formatRate(0.00012345, locale), '0.00012');
        expect(amount.formatRate(0.00001234, locale), '0.000012');
      });

      test('handles trailing zeros correctly', () {
        expect(amount.formatRate(0.10000, locale), '0.10');
        expect(amount.formatRate(0.01000, locale), '0.01');
      });

      test('handles edge cases', () {
        expect(amount.formatRate(0, locale), '0.00');
        expect(amount.formatRate(0.1, locale), '0.10');
      });
    });
  });
}
