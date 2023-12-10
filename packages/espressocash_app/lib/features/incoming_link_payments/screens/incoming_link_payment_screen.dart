import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../l10n/l10n.dart';
import '../../../routes.gr.dart';
import '../../../ui/colors.dart';
import '../../../ui/info_icon.dart';
import '../../../ui/message_info_widget.dart';
import '../../transactions/models/tx_results.dart';
import '../../transactions/widgets/transfer_error.dart';
import '../../transactions/widgets/transfer_progress.dart';
import '../../transactions/widgets/transfer_success.dart';
import '../data/ilp_repository.dart';
import '../models/incoming_link_payment.dart';
import '../widgets/extensions.dart';
import '../widgets/invalid_escrow_error_widget.dart';

@RoutePage()
class IncomingLinkPaymentScreen extends StatefulWidget {
  const IncomingLinkPaymentScreen({
    super.key,
    required this.id,
  });

  static const route = IncomingLinkPaymentRoute.new;

  final String id;

  @override
  State<IncomingLinkPaymentScreen> createState() =>
      _IncomingLinkPaymentScreenState();
}

class _IncomingLinkPaymentScreenState extends State<IncomingLinkPaymentScreen> {
  late final Stream<IncomingLinkPayment?> _payment;

  @override
  void initState() {
    super.initState();
    _payment = sl<ILPRepository>().watch(widget.id);
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<IncomingLinkPayment?>(
        stream: _payment,
        builder: (context, state) {
          final payment = state.data;

          return payment == null
              ? TransferProgress(
                  onBack: () => context.router.pop(),
                )
              : payment.status.maybeMap(
                  success: (_) => TransferSuccess(
                    onBack: () => context.router.pop(),
                    onOkPressed: () => context.router.pop(),
                    content: const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CpMessageInfoWidget(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(18),
                            content: Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 14,
                                  backgroundColor: CpColors.yellowColor,
                                  child: CpInfoIcon(
                                    iconColor: CpColors.darkBackgroundColor,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    r'You were charged a one time $0.10 fee for your first incoming transaction.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.50,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                    statusContent: context.l10n.moneyReceived,
                  ),
                  txFailure: (it) => it.reason == TxFailureReason.escrowFailure
                      ? const InvalidEscrowErrorWidget()
                      : TransferError(
                          onBack: () => context.router.pop(),
                          onRetry: () => context.retryILP(payment),
                        ),
                  orElse: () => TransferProgress(
                    onBack: () => context.router.pop(),
                  ),
                );
        },
      );
}
