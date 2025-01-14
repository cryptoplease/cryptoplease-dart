import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../utils/extensions.dart';
import '../../conversion_rates/data/repository.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import 'token_item.dart';

class TokenInfo extends StatelessWidget {
  const TokenInfo({super.key, required this.tokenAddress});

  final String tokenAddress;

  @override
  Widget build(BuildContext context) {
    final token = Provider.of<Token>(context);

    final rate = sl<ConversionRatesRepository>().readRate(
          CryptoCurrency(token: token),
          to: defaultFiatCurrency,
        ) ??
        Decimal.zero;

    final fiatRate = Amount.fromDecimal(value: rate, currency: Currency.usd);

    return TokenItemContainer(
      title: '${context.l10n.about} ${token.name}',
      content: Column(
        children: [
          _InfoItem(
            label: token != Token.sol ? context.l10n.token : context.l10n.coin,
            value: '${token.name} (${token.symbol})',
          ),
          _InfoItem(
            label: context.l10n.price,
            value: '\$${fiatRate.formatRate(rate.toDouble(), context.locale)}',
          ),
          if (token != Token.sol)
            _InfoItem(
              label: context.l10n.mintAddress,
              value: tokenAddress.toShortAddress(),
            ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      );
}
