import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../../l10n/device_locale.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/number_formatter.dart';
import '../../../ui/text_field.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';

class TokenQuantityInput extends StatefulWidget {
  const TokenQuantityInput({
    super.key,
    required TextEditingController quantityController,
    required this.crypto,
    required this.rate,
    required this.symbol,
  }) : _quantityController = quantityController;

  final TextEditingController _quantityController;
  final CryptoAmount crypto;
  final String symbol;
  final Decimal rate;

  @override
  State<TokenQuantityInput> createState() => _TokenQuantityInputState();
}

class _TokenQuantityInputState extends State<TokenQuantityInput> {
  bool _showUsdcEquivalent = false;
  double _textHeight = 1.2;

  @override
  void initState() {
    super.initState();
    widget._quantityController.addListener(_quantityListener);
  }

  void _quantityListener() {
    final isValueValid = widget._quantityController.text.isNotEmpty;

    setState(() {
      if (isValueValid) {
        _textHeight = 0.9;
        _showUsdcEquivalent = true;
      } else {
        _textHeight = 1.2;
        _showUsdcEquivalent = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          CpTextField(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 24,
            ),
            height: 72,
            controller: widget._quantityController,
            inputType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.none,
            backgroundColor: CpColors.blackGreyColor,
            placeholder: '0 ${widget.symbol}',
            placeholderColor: Colors.white,
            textColor: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.w700,
            maxLength: 29,
            textHeight: _textHeight,
            suffix: Padding(
              padding: const EdgeInsets.only(right: 14),
              child: CpButton(
                onPressed: _isMaxAmountZero ? _callback : null,
                text: _buttonText,
                minWidth: 54,
                size: CpButtonSize.small,
                variant: CpButtonVariant.inverted,
              ),
            ),
          ),
          Visibility(
            visible: _showUsdcEquivalent,
            child: Positioned(
              left: 28,
              bottom: 4,
              child: Text(
                _usdcAmount,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ),
        ],
      );

  Decimal get _parsedAmount => widget._quantityController.text
      .toDecimalOrZero(DeviceLocale.localeOf(context));

  bool get _isMax => _parsedAmount == widget.crypto.decimal;

  bool get _isMaxAmountZero => widget.crypto.decimal > Decimal.zero;

  String get _usdcAmount =>
      r'≈ $' + (_parsedAmount * widget.rate).toStringAsFixed(2);

  String get _buttonText => _isMax ? 'Clear' : 'Max';

  VoidCallback get _callback => _isMax
      ? widget._quantityController.clear
      : () => widget._quantityController.text = widget.crypto
          .format(DeviceLocale.localeOf(context), skipSymbol: true);
}
