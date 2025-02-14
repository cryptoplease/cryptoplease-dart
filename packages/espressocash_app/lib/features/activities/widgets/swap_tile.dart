import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../../l10n/device_locale.dart';
import '../../../../l10n/l10n.dart';
import '../../../utils/extensions.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../token_swap/screens/swap_details_screen.dart';
import '../../tokens/token.dart';
import '../../tokens/widgets/token_icon.dart';
import '../models/activity.dart';
import 'activity_tile.dart';

class SwapTile extends StatelessWidget {
  const SwapTile({
    super.key,
    required this.activity,
    this.showIcon = true,
  });

  final SwapActivity activity;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    final locale = DeviceLocale.localeOf(context);

    final data = activity.data.data;

    final inputToken = data.input.cryptoCurrency.token;
    final outputToken = data.output.cryptoCurrency.token;

    final subtitle = '${inputToken.symbol}-${outputToken.symbol}';

    final swapTo =
        data.output.maybeFlatMap((it) => it.format(locale, maxDecimals: 2));

    return CpActivityTile(
      title: context.l10n.swap,
      subtitle: subtitle,
      incomingAmount: swapTo,
      timestamp: context.formatDate(activity.created),
      icon: _SwapIcon(
        input: inputToken,
        output: outputToken,
      ),
      status: activity.data.status.map(
        txCreated: always(CpActivityTileStatus.inProgress),
        txSent: always(CpActivityTileStatus.inProgress),
        success: always(CpActivityTileStatus.success),
        txFailure: always(CpActivityTileStatus.failure),
      ),
      onTap: () => SwapDetailsScreen.push(context, id: activity.id),
      showIcon: showIcon,
    );
  }
}

class _SwapIcon extends StatelessWidget {
  const _SwapIcon({
    required this.input,
    required this.output,
  });

  final Token input;
  final Token output;

  @override
  Widget build(BuildContext context) => SizedBox.square(
        dimension: 42,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TokenIcon(token: input, size: 30),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 16,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TokenIcon(token: output, size: 30),
            ),
          ],
        ),
      );
}
