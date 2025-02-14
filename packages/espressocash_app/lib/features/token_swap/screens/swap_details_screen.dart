import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/dialogs.dart';
import '../../../ui/web_view_screen.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../transactions/services/create_transaction_link.dart';
import '../../transactions/widgets/transfer_error.dart';
import '../../transactions/widgets/transfer_progress.dart';
import '../../transactions/widgets/transfer_success.dart';
import '../data/swap_repository.dart';
import '../models/swap.dart';
import '../widgets/extensions.dart';

class SwapDetailsScreen extends StatefulWidget {
  const SwapDetailsScreen({
    super.key,
    required this.id,
  });

  static void push(BuildContext context, {required String id}) =>
      Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => SwapDetailsScreen(id: id),
        ),
      );

  final String id;

  @override
  State<SwapDetailsScreen> createState() => _SwapDetailsScreenState();
}

class _SwapDetailsScreenState extends State<SwapDetailsScreen> {
  late final Stream<Swap?> _swap;

  @override
  void initState() {
    super.initState();
    _swap = sl<SwapRepository>().watch(widget.id);
  }

  void _handleCancel(String id) => showConfirmationDialog(
        context,
        title: context.l10n.swap_lblCancelConfirmationTitle.toUpperCase(),
        message: context.l10n.swap_lblCancelConfirmationSubtitle,
        onConfirm: () {
          context.cancelSwap(id: id);
          Navigator.pop(context);
        },
      );

  @override
  Widget build(BuildContext context) => StreamBuilder<Swap?>(
        stream: _swap,
        builder: (context, snapshot) {
          final swap = snapshot.data;

          return swap == null
              ? TransferProgress(onBack: () => Navigator.pop(context))
              : swap.status.map(
                  success: (status) => TransferSuccess(
                    onBack: () => Navigator.pop(context),
                    onOkPressed: () => Navigator.pop(context),
                    statusContent: context.l10n.swapSuccess(
                      swap.data.input.format(context.locale, maxDecimals: 2),
                      swap.data.output.format(context.locale, maxDecimals: 2),
                    ),
                    onMoreDetailsPressed: () {
                      final link = status.tx.id
                          .let(createTransactionLink)
                          .let(Uri.parse)
                          .toString();
                      context.openLink(link);
                    },
                  ),
                  txFailure: (it) => TransferError(
                    onBack: () => Navigator.pop(context),
                    onCancel: () => _handleCancel(swap.id),
                    reason: it.reason,
                  ),
                  txCreated: (_) => TransferProgress(
                    onBack: () => Navigator.pop(context),
                  ),
                  txSent: (_) => TransferProgress(
                    onBack: () => Navigator.pop(context),
                  ),
                );
        },
      );
}
