import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class SlippageDropdown extends StatelessWidget {
  SlippageDropdown({
    Key? key,
    required this.currentSlippage,
    required this.onSlippageChanged,
  }) : super(key: key);

  final Decimal currentSlippage;
  final ValueSetter<Decimal> onSlippageChanged;

  final _availableSlippages = [
    0.1,
    0.5,
    1.0,
  ].map((v) => Decimal.parse(v.toString()));

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => Row(
          children: [
            Text(context.l10n.slippage),
            Container(
              height: constraints.maxHeight,
              width: constraints.minWidth,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(constraints.maxHeight),
                ),
                child: Material(
                  color: CpColors.strokeColor,
                  child: DropdownButtonFormField<Decimal>(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        gapPadding: 0,
                      ),
                    ),
                    items: _availableSlippages
                        .map(
                          (value) => DropdownMenuItem(
                            value: value,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '$value %',
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        )
                        .toList(),
                    value: currentSlippage,
                    onChanged: (value) {
                      if (value == null) return;
                      onSlippageChanged(value);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
