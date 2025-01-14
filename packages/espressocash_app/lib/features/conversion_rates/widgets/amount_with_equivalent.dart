import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/decimal_separator.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/chip.dart';
import '../../../ui/colors.dart';
import '../../../ui/number_formatter.dart';
import '../../../ui/shake.dart';
import '../../../ui/size.dart';
import '../../../ui/usdc_info.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../data/repository.dart';
import '../services/amount_ext.dart';
import 'extensions.dart';

class AmountWithEquivalent extends StatelessWidget {
  const AmountWithEquivalent({
    super.key,
    required this.inputController,
    required this.collapsed,
    required this.token,
    this.shakeKey,
    this.error = '',
    this.showUsdcInfo = false,
    this.backgroundColor = Colors.black,
  });

  final TextEditingController inputController;
  final Token token;
  final bool collapsed;
  final Key? shakeKey;
  final String error;
  final bool showUsdcInfo;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) =>
      ValueListenableBuilder<TextEditingValue>(
        valueListenable: inputController,
        builder: (context, value, _) {
          final num =
              value.text.toDecimalOrZero(DeviceLocale.localeOf(context));

          final isZero = num.toDouble() == 0;
          final hasError = error.isNotEmpty;

          final state = (isZero, hasError, showUsdcInfo);

          return Column(
            children: [
              Shake(
                key: shakeKey,
                child: _InputDisplay(
                  input: value.text,
                  fontSize: collapsed ? 57 : (context.isSmall ? 55 : 80),
                  token: token,
                ),
              ),
              if (!collapsed)
                Container(
                  height: showUsdcInfo ? (context.isSmall ? 90 : 105) : null,
                  padding: EdgeInsets.only(top: context.isSmall ? 2 : 16),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 100),
                    // TODO(KB): Check if needed
                    // ignore: avoid-single-child-column-or-row
                    child: Column(
                      children: [
                        switch (state) {
                          (_, true, _) => _DisplayChip(
                              key: ValueKey(error),
                              value: error,
                              shouldDisplay: true,
                              backgroundColor: CpColors.alertRedColor,
                            ),
                          (true, false, true) => const _InfoChip(),
                          _ => _EquivalentDisplay(
                              input: value.text,
                              token: token,
                              backgroundColor: backgroundColor,
                            ),
                        },
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      );
}

class _InfoChip extends StatelessWidget {
  const _InfoChip();

  @override
  Widget build(BuildContext context) =>
      UsdcInfoWidget(isSmall: context.isSmall);
}

class _EquivalentDisplay extends StatelessWidget {
  const _EquivalentDisplay({
    required this.input,
    required this.token,
    this.backgroundColor,
  });

  final String input;
  final Token token;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final locale = DeviceLocale.localeOf(context);
    final value = input.toDecimalOrZero(locale);
    final shouldDisplay = value.toDouble() != 0;

    final String formattedAmount;
    if (shouldDisplay) {
      formattedAmount = Amount.fromDecimal(
        value: value,
        currency:
            token == Token.usdc ? Currency.usd : CryptoCurrency(token: token),
      )
          .let(
            (it) => switch (it) {
              final FiatAmount fiat =>
                fiat.toTokenAmount(token)?.round(Currency.usd.decimals),
              final CryptoAmount crypto => crypto.toFiatAmount(
                  defaultFiatCurrency,
                  ratesRepository: sl<ConversionRatesRepository>(),
                ),
            },
          )
          .maybeFlatMap(
            (it) => it.format(
              locale,
              roundInteger: true,
              skipSymbol: token == Token.usdc,
            ),
          )
          .ifNull(() => '0');
    } else {
      formattedAmount = '0';
    }

    final child = Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.l10n.tokenEquivalent(formattedAmount).toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (token == Token.usdc)
            TextSpan(
              text: ' ${Token.usdc.symbol.toUpperCase()}',
              style: const TextStyle(
                color: CpColors.yellowColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
        ],
      ),
      textAlign: TextAlign.center,
    );

    return _Chip(
      shouldDisplay: shouldDisplay,
      backgroundColor: backgroundColor,
      child: child,
    );
  }
}

class _DisplayChip extends StatelessWidget {
  const _DisplayChip({
    super.key,
    required this.shouldDisplay,
    required this.value,
    this.backgroundColor,
  });

  final bool shouldDisplay;
  final String value;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => _Chip(
        shouldDisplay: shouldDisplay,
        backgroundColor: backgroundColor,
        child: Text(
          value.toUpperCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.shouldDisplay,
    required this.child,
    this.backgroundColor,
  });

  final bool shouldDisplay;
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 45,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: shouldDisplay ? 1 : 0,
          child: CpChip(
            padding: CpChipPadding.small,
            backgroundColor: backgroundColor,
            child: child,
          ),
        ),
      );
}

class _InputDisplay extends StatelessWidget {
  const _InputDisplay({
    required this.input,
    required this.fontSize,
    required this.token,
  });

  final String input;
  final double fontSize;
  final Token token;

  @override
  Widget build(BuildContext context) {
    final sign = Currency.usd.sign;
    final amount = input.formatted(context);
    final formatted =
        token == Token.usdc ? '$sign$amount' : '$amount ${token.symbol}';

    return SizedBox(
      height: 94,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            formatted,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

extension on String {
  String formatted(BuildContext context) {
    final locale = DeviceLocale.localeOf(context);
    final decimalSeparator = getDecimalSeparator(locale);
    final value = toDecimalOrZero(locale);

    if (contains(decimalSeparator)) {
      return this;
    } else if (value.toDouble() == 0) {
      return '0';
    }

    return this;
  }
}
