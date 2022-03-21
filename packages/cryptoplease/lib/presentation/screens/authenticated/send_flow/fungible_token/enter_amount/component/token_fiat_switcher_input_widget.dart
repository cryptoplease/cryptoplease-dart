import 'package:cryptoplease/bl/amount.dart';
import 'package:cryptoplease/bl/currency.dart';
import 'package:cryptoplease/bl/tokens/token.dart';
import 'package:cryptoplease/l10n/device_locale.dart';
import 'package:cryptoplease/presentation/format_amount.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/enter_amount/component/add_max_button.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/enter_amount/component/amount_display.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/enter_amount/component/converted_amount_view.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/enter_amount/component/enter_amount_keypad.dart';
import 'package:cryptoplease/presentation/screens/authenticated/send_flow/fungible_token/enter_amount/component/switch_currency_button.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum _AmountInputType { token, fiat }

class TokenFiatSwitcherInputWidget extends StatefulWidget {
  const TokenFiatSwitcherInputWidget({
    Key? key,
    required this.tokenAmount,
    required this.fiatAmount,
    required this.token,
    required this.currency,
    required this.onTokenAmountChanged,
    required this.onFiatAmountChanged,
    required this.onTokenChanged,
  }) : super(key: key);

  final Amount tokenAmount;
  final Amount? fiatAmount;
  final Token token;
  final Currency currency;
  final ValueSetter<Decimal> onTokenAmountChanged;
  final ValueSetter<Decimal> onFiatAmountChanged;
  final ValueSetter<Token> onTokenChanged;

  @override
  _TokenFiatSwitcherInputState createState() => _TokenFiatSwitcherInputState();
}

class _TokenFiatSwitcherInputState extends State<TokenFiatSwitcherInputWidget> {
  late final TextEditingController _controller;
  late _AmountInputType _inputType;

  @override
  void initState() {
    super.initState();
    _inputType = _AmountInputType.token;
    _controller = TextEditingController.fromValue(TextEditingValue.empty);
    _controller.addListener(_calculateAmount);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.tokenAmount.value != 0) {
      _refreshFromWidget(widget.tokenAmount);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant TokenFiatSwitcherInputWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    final amount = _inputType == _AmountInputType.token
        ? widget.tokenAmount
        : widget.fiatAmount;
    if (amount != null && amount.decimal != _decimalValue) {
      _refreshFromWidget(amount);
    }
  }

  void _refreshFromWidget(Amount amount) {
    _controller.text = amount.format(
      DeviceLocale.localeOf(context),
      skipSymbol: true,
    );
  }

  Decimal get _decimalValue =>
      _controller.text.toDecimalOrZero(DeviceLocale.localeOf(context));

  void _calculateAmount() {
    if (_inputType == _AmountInputType.token) {
      widget.onTokenAmountChanged(_decimalValue);
    } else {
      widget.onFiatAmountChanged(_decimalValue);
    }
  }

  void _onCurrencySwitch() {
    final newInput = _inputType == _AmountInputType.token
        ? _AmountInputType.fiat
        : _AmountInputType.token;
    setState(() => _inputType = newInput);
    final amount = _inputType == _AmountInputType.token
        ? widget.tokenAmount
        : widget.fiatAmount;
    _controller.text = amount == null || amount.value == 0
        ? ''
        : amount.format(DeviceLocale.localeOf(context), skipSymbol: true);
  }

  int get _maxDecimals {
    switch (_inputType) {
      case _AmountInputType.token:
        return widget.token.decimals;
      case _AmountInputType.fiat:
        return widget.currency.decimals;
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: Column(
                  children: [
                    ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _controller,
                      builder: (context, value, __) => AmountDisplay(
                        value: value.text,
                        onTokenChanged: _inputType == _AmountInputType.token
                            ? widget.onTokenChanged
                            : null,
                        currency: _inputType == _AmountInputType.token
                            ? widget.tokenAmount.currency
                            : widget.currency,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (widget.fiatAmount != null)
                      ConvertedAmountView(
                        amount: _inputType == _AmountInputType.token
                            ? widget.fiatAmount
                            : widget.tokenAmount,
                      ),
                  ],
                ),
              ),
              if (widget.fiatAmount != null)
                Positioned(
                  bottom: 0,
                  right: 16,
                  top: 24,
                  child: Flex(
                    mainAxisAlignment: MainAxisAlignment.center,
                    direction: Axis.vertical,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SwitchCurrencyButton(onTap: _onCurrencySwitch),
                    ],
                  ),
                )
            ],
          ),
          const SizedBox(height: 36),
          AddMaxButton(token: widget.token),
          EnterAmountKeypad(
            controller: _controller,
            maxDecimals: _maxDecimals,
          ),
        ],
      );
}

extension on String {
  Decimal toDecimalOrZero(Locale locale) {
    try {
      final formatter = NumberFormat.decimalPattern(locale.languageCode)
        ..minimumFractionDigits = 2;
      final formatted = formatter.parse(this);

      return Decimal.tryParse(formatted.toString()) ?? Decimal.zero;
    } on FormatException catch (_) {
      return Decimal.zero;
    }
  }
}
