import 'package:auto_route/auto_route.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/amount.dart';
import '../../../../../../core/presentation/format_amount.dart';
import '../../../../../../l10n/device_locale.dart';
import '../../../../../../ui/colors.dart';
import '../../../core/currency.dart';
import '../../../core/processing_state.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/loader.dart';
import '../../token_details/screens/token_details_screen.dart';
import '../../tokens/token.dart';
import '../../tokens/widgets/token_icon.dart';
import '../services/bloc.dart';

class PopularTokenList extends StatelessWidget {
  const PopularTokenList({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PopularTokenBloc, PopularTokenState>(
        builder: (context, state) {
          const loader = SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
              child: LoadingIndicator(),
            ),
          );

          return state.tokens.isNotEmpty
              ? SliverList(
                  delegate: SliverChildListDelegate(
                    state.tokens.entries
                        .map((e) => _TokenItem(e.key, e.value))
                        .toList(),
                  ),
                )
              : switch (state.processingState) {
                  ProcessingStateNone() ||
                  ProcessingStateProcessing() =>
                    loader,
                  ProcessingStateError() => SliverToBoxAdapter(
                      child: Center(
                        child: Text(context.l10n.failedToLoadTokens),
                      ),
                    ),
                };
        },
      );
}

class _TokenItem extends StatelessWidget {
  const _TokenItem(this.token, this.currentPrice);

  final Token token;
  final double currentPrice;

  @override
  Widget build(BuildContext context) {
    final locale = DeviceLocale.localeOf(context);
    final Amount tokenRate = Amount.fromDecimal(
      currency: defaultFiatCurrency,
      value: Decimal.parse(currentPrice.toString()),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
      child: ListTile(
        onTap: () =>
            context.router.push(TokenDetailsScreen.route(token: token)),
        leading: TokenIcon(token: token, size: 37),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                token.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            _TokenSymbolWidget(token.symbol),
          ],
        ),
        trailing: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 63),
          child: FittedBox(
            fit: BoxFit.none,
            alignment: Alignment.centerRight,
            child: Text(
              tokenRate.format(locale),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

class _TokenSymbolWidget extends StatelessWidget {
  const _TokenSymbolWidget(this.symbol);

  final String symbol;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 57,
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: const ShapeDecoration(
            shape: StadiumBorder(),
            color: CpColors.darkSplashBackgroundColor,
          ),
          child: Center(
            widthFactor: 1,
            child: Text(
              symbol.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
        ),
      );
}
