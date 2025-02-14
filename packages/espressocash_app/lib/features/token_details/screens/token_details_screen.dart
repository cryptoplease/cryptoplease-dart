import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/value_stream_builder.dart';
import '../../activities/services/tx_updater.dart';
import '../../activities/widgets/recent_token_activity.dart';
import '../../conversion_rates/data/repository.dart';
import '../../conversion_rates/services/token_fiat_balance_service.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../ramp/widgets/ramp_buttons.dart';
import '../../token_send/screens/token_send_input_screen.dart';
import '../../token_send/widgets/token_app_bar.dart';
import '../../token_swap/screens/token_swap_input_screen.dart';
import '../../tokens/token.dart';
import '../widgets/token_info.dart';

class TokenDetailsScreen extends StatelessWidget {
  const TokenDetailsScreen({super.key, required this.token});

  final Token token;

  static void push(BuildContext context, {required Token token}) =>
      Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => TokenDetailsScreen(token: token),
        ),
      );

  @override
  Widget build(BuildContext context) => Provider<Token>.value(
        value: token,
        child: Scaffold(
          backgroundColor: CpColors.darkSandColor,
          body: SafeArea(
            bottom: false,
            child: NestedScrollView(
              headerSliverBuilder: (context, _) => [TokenAppBar(token: token)],
              body: _TokenDetailsBody(token),
            ),
          ),
        ),
      );
}

class _TokenDetailsBody extends StatelessWidget {
  const _TokenDetailsBody(this.token);

  final Token token;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CpColors.darkSandColor,
              CpColors.deepGreyColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.55, 0.56],
          ),
        ),
        child: LayoutBuilder(
          builder: (
            BuildContext context,
            BoxConstraints viewportConstraints,
          ) =>
              RefreshIndicator(
            onRefresh: () => sl<TxUpdater>().call(),
            color: CpColors.primaryColor,
            backgroundColor: Colors.white,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
                parent: ClampingScrollPhysics(),
              ),
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 4),
                      const _TokenHeader(),
                      const SizedBox(height: 24),
                      if (token.isUsdcToken)
                        const _RampButtons()
                      else
                        _ActionButtons(token: token),
                      const SizedBox(height: 24),
                      Expanded(
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: CpColors.deepGreyColor,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 41),
                              child: Column(
                                children: [
                                  TokenInfo(tokenAddress: token.address),
                                  RecentTokenActivityWidget(
                                    tokenAddress: token.address,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class _TokenHeader extends StatelessWidget {
  const _TokenHeader();

  @override
  Widget build(BuildContext context) {
    final token = context.watch<Token>();
    final rate = sl<ConversionRatesRepository>().readRate(
          CryptoCurrency(token: token),
          to: defaultFiatCurrency,
        ) ??
        Decimal.zero;

    return ValueStreamBuilder<CryptoFiatAmount>(
      create: () => (
        sl<TokenFiatBalanceService>().readInvestmentBalance(token),
        (
          Amount.zero(currency: Currency.usdc) as CryptoAmount,
          Amount.zero(currency: Currency.usd) as FiatAmount
        )
      ),
      builder: (context, value) {
        final crypto = value.$1;
        final fiat = value.$2;
        final fiatRate =
            Amount.fromDecimal(value: rate, currency: Currency.usd);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  text: '${context.l10n.balance} ',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: fiat?.format(context.locale),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              FittedBox(
                child: Text(
                  context.formatWithMinAmount(crypto),
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 59,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: '${context.l10n.price} ',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          '\$${fiatRate.formatRate(rate.toDouble(), context.locale)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _RampButtons extends StatelessWidget {
  const _RampButtons();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AddCashButton(),
            SizedBox(width: 16),
            CashOutButton(),
          ],
        ),
      );
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({required this.token});

  final Token token;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CpButton(
              text: 'Swap',
              minWidth: 106,
              size: CpButtonSize.big,
              onPressed: () => TokenSwapInputScreen.push(
                context,
                initialToken: token,
              ),
            ),
            const SizedBox(width: 14),
            CpButton(
              text: context.l10n.send,
              minWidth: 106,
              size: CpButtonSize.big,
              onPressed: () => TokenSendInputScreen.push(
                context,
                token: token,
              ),
            ),
          ],
        ),
      );
}

extension CryptoAmountFormatting on BuildContext {
  String formatWithMinAmount(CryptoAmount cryptoAmount) =>
      cryptoAmount.decimal < Decimal.parse(_minCryptoAmount.toString())
          ? '<${Amount.fromDecimal(
              value: Decimal.parse(_minCryptoAmount.toString()),
              currency: cryptoAmount.currency,
            ).format(locale)}'
          : cryptoAmount.format(locale, maxDecimals: 4);
}

const double _minCryptoAmount = 0.0001;
