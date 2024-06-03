import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../ui/value_stream_builder.dart';
import '../../conversion_rates/services/watch_token_fiat_balance.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/token.dart';
import '../../tokens/widgets/token_icon.dart';

class BalanceAmount extends StatelessWidget {
  const BalanceAmount({super.key});

  @override
  Widget build(BuildContext context) => ValueStreamBuilder<Amount>(
        create: () => (
          sl<WatchTokenFiatBalance>()
              .call(Token.usdc)
              .map((event) => event ?? Amount.zero(currency: Currency.usd)),
          Amount.zero(currency: Currency.usd),
        ),
        builder: (context, amount) {
          final formattedAmount = amount.format(
            DeviceLocale.localeOf(context),
            roundInteger: amount.isZero,
          );

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  formattedAmount,
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -1,
                  ),
                ),
              ).let((it) => amount.isZero ? it : Flexible(child: it)),
              const SizedBox(width: 8),
              const TokenIcon(token: Token.usdc, size: 30),
            ],
          );
        },
      );
}
