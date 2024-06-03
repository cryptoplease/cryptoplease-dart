import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/colors.dart';
import '../../../ui/home_tile.dart';
import '../../../ui/theme.dart';
import '../../../ui/value_stream_builder.dart';
import '../../balances/data/repository.dart';
import '../../conversion_rates/services/watch_token_fiat_balance.dart';
import '../../conversion_rates/services/watch_token_total_balance.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../currency/models/currency.dart';
import '../../tokens/widgets/token_icon.dart';

class PortfolioWidget extends StatefulWidget {
  const PortfolioWidget({super.key});

  @override
  State<PortfolioWidget> createState() => _PortfolioWidgetState();
}

class _PortfolioWidgetState extends State<PortfolioWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ValueStreamBuilder<IList<CryptoAmount>>(
      create: () => (
        sl<TokenBalancesRepository>().watchTokenBalances(),
        const IListConst([])
      ),
      builder: (context, balances) {
        final hasTokens = balances.isNotEmpty;

        return hasTokens
            ? PortfolioTile(balances: balances)
            : const SizedBox.shrink();
      },
    );
  }
}

class PortfolioTile extends StatelessWidget {
  const PortfolioTile({super.key, required this.balances});

  final IList<CryptoAmount> balances;

  @override
  Widget build(BuildContext context) => HomeTile(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Text(
                      context.l10n.cryptoPortfolio,
                      style: dashboardSectionTitleTextStyle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  ValueStreamBuilder<Amount>(
                    create: () => (
                      sl<WatchTotalTokenFiatBalance>().call(),
                      Amount.zero(currency: Currency.usd),
                    ),
                    builder: (context, balance) => Flexible(
                      child: FittedBox(
                        child: Text(
                          balance.format(DeviceLocale.localeOf(context)),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _PortfolioWidget(balances),
          ],
        ),
      );
}

class _PortfolioWidget extends StatelessWidget {
  const _PortfolioWidget(this.balances);

  final IList<CryptoAmount> balances;

  @override
  Widget build(BuildContext context) {
    final children = balances
        .map(
          (balance) => _TokenItem(
            key: ValueKey(balance.token),
            amount: balance,
          ),
        )
        .expand(
          (widget) => [
            widget,
            const SizedBox(height: 6),
          ],
        )
        .toList();

    return Column(children: children);
  }
}

class _TokenItem extends StatelessWidget {
  const _TokenItem({super.key, required this.amount});

  final CryptoAmount amount;

  static const double _iconSize = 36.0;
  static const double _minFiatAmount = 0.01;

  @override
  Widget build(BuildContext context) => ValueStreamBuilder<Amount?>(
        create: () => (sl<WatchTokenFiatBalance>().call(amount.token), null),
        builder: (context, fiatAmount) {
          String fiatAmountText;

          if (fiatAmount != null) {
            fiatAmountText = fiatAmount.value < _minFiatAmount
                ? r'<$0.01'
                : fiatAmount.format(context.locale, maxDecimals: 2);
          } else {
            fiatAmountText = '-';
          }

          return _Card(
            child: ListTile(
              key: key,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              dense: true,
              horizontalTitleGap: 4,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(_iconSize / 2),
                child: TokenIcon(token: amount.token, size: _iconSize),
              ),
              title: Text(
                amount.token.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    fiatAmountText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    amount.format(context.locale),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // isThreeLine: true,
            ),
          );
        },
      );
}

class _Card extends StatelessWidget {
  const _Card({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        decoration: const ShapeDecoration(
          color: CpColors.darkBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        child: child,
      );
}