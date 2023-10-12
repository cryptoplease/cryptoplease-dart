import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../core/amount.dart';
import '../../../core/currency.dart';
import '../../../core/presentation/format_amount.dart';
import '../../../core/tokens/token.dart';
import '../../../l10n/decimal_separator.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/chip.dart';
import '../../../ui/colors.dart';
import '../../../ui/number_formatter.dart';
import '../../../ui/shake.dart';
import '../../../ui/usdc_info.dart';
import '../services/amount_ext.dart';

class AmountWithEquivalent extends StatelessWidget {
  const AmountWithEquivalent({
    super.key,
    required this.inputController,
    required this.collapsed,
    required this.token,
    this.shakeKey,
    this.error = '',
    this.showUsdcInfo = false,
  });

  final TextEditingController inputController;
  final Token token;
  final bool collapsed;
  final Key? shakeKey;
  final String error;
  final bool showUsdcInfo;

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
                  fontSize: collapsed ? 57 : 80,
                ),
              ),
              if (!collapsed)
                Container(
                  height: showUsdcInfo ? 96 : null,
                  padding: const EdgeInsets.only(top: 12.0),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 100),
                    child: Column(
                      children: [
                        switch (state) {
                          (_, true, _) => _DisplayChip(
                              key: ValueKey(error),
                              value: error,
                              shouldDisplay: true,
                              backgroundColor: CpColors.errorChipColor,
                            ),
                          (true, false, true) => const _UsdcInfoChip(),
                          _ => _EquivalentDisplay(
                              input: value.text,
                              token: token,
                              backgroundColor: Colors.black,
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

class _UsdcInfoChip extends StatelessWidget {
  const _UsdcInfoChip();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return UsdcInfoWidget(isSmall: width < 380);
  }
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
      formattedAmount = Amount.fromDecimal(value: value, currency: Currency.usd)
          .let((it) => it as FiatAmount)
          .let((it) => it.toTokenAmount(token)?.round(Currency.usd.decimals))
          .maybeFlatMap(
            (it) => it.format(locale, roundInteger: true, skipSymbol: true),
          )
          .ifNull(() => '0');
    } else {
      formattedAmount = '0';
    }

    return _DisplayChip(
      shouldDisplay: shouldDisplay,
      value: context.l10n.tokenEquivalent(formattedAmount, token.symbol),
      backgroundColor: backgroundColor,
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
  Widget build(BuildContext context) => SizedBox(
        height: 45,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: shouldDisplay ? 1 : 0,
          child: CpChip(
            padding: CpChipPadding.small,
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
          ),
        ),
      );
}

class _InputDisplay extends StatelessWidget {
  const _InputDisplay({
    required this.input,
    required this.fontSize,
  });

  final String input;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final sign = Currency.usd.sign;
    final amount = input.formatted(context);
    final formatted = '$sign$amount';

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
