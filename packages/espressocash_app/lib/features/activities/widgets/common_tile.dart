import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/web_view_screen.dart';
import '../../../utils/extensions.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../tokens/token.dart';
import '../../transactions/services/create_transaction_link.dart';
import '../models/transaction.dart';
import 'activity_tile.dart';

class CommonTile extends StatelessWidget {
  const CommonTile({
    super.key,
    required this.txCommon,
    required this.showIcon,
  });

  final TxCommon txCommon;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    final signature = txCommon.tx.id;

    final isUnknown = txCommon.amount?.cryptoCurrency.token == Token.unk;

    final isOutgoing =
        txCommon.amount?.let((e) => e.value.isNegative || e.value == 0) ??
            false;

    final amount = isUnknown
        ? null
        : txCommon.amount
            ?.let((e) => e.format(context.locale, maxDecimals: 9))
            .let((e) => e.replaceAll('-', ''));

    return CpActivityTile(
      title: isOutgoing ? context.l10n.sentDirectly : context.l10n.received,
      subtitle: signature.toShortAddress(),
      status: switch (txCommon.status) {
        TxCommonStatus.success => CpActivityTileStatus.success,
        TxCommonStatus.failure => CpActivityTileStatus.failure,
      },
      timestamp: txCommon.created?.let(context.formatDate) ?? '',
      outgoingAmount: isOutgoing ? amount : null,
      incomingAmount: isOutgoing ? null : amount,
      icon: Assets.icons.txIcon.svg(),
      onTap: () {
        final link = Uri.parse(createTransactionLink(signature));
        context.openLink(link.toString());
      },
      showIcon: showIcon,
    );
  }
}
