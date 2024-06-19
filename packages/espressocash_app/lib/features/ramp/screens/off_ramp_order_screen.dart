import 'dart:async';

import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../data/db/db.dart';
import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/button.dart';
import '../../../ui/content_padding.dart';
import '../../../ui/dialogs.dart';
import '../../../ui/partner_order_id.dart';
import '../../../ui/status_screen.dart';
import '../../../ui/status_widget.dart';
import '../../../ui/text_button.dart';
import '../../../ui/theme.dart';
import '../../../ui/timeline.dart';
import '../../../ui/web_view_screen.dart';
import '../../../utils/extensions.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../intercom/services/intercom_service.dart';
import '../../ramp_partner/models/ramp_partner.dart';
import '../../transactions/widgets/transfer_progress.dart';
import '../services/off_ramp_order_service.dart';
import '../widgets/off_ramp_confirmation.dart';

class OffRampOrderScreen extends StatefulWidget {
  const OffRampOrderScreen({super.key, required this.orderId});

  static void push(BuildContext context, {required String id}) =>
      Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => OffRampOrderScreen(orderId: id),
        ),
      );

  static void pushReplacement(BuildContext context, {required String id}) =>
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (context) => OffRampOrderScreen(orderId: id),
        ),
      );

  final String orderId;

  @override
  State<OffRampOrderScreen> createState() => _OffRampOrderScreenState();
}

class _OffRampOrderScreenState extends State<OffRampOrderScreen> {
  late final Stream<OffRampOrder> _stream;

  @override
  void initState() {
    super.initState();
    _stream = sl<OffRampOrderService>().watch(widget.orderId);
  }

  @override
  Widget build(BuildContext context) => StreamBuilder(
        stream: _stream,
        builder: (context, snapshot) {
          final order = snapshot.data;

          return order == null
              ? TransferProgress(onBack: () => Navigator.pop(context))
              : OffRampOrderScreenContent(order: order);
        },
      );
}

class OffRampOrderScreenContent extends StatelessWidget {
  const OffRampOrderScreenContent({
    super.key,
    required this.order,
  });

  final OffRampOrder order;

  @override
  Widget build(BuildContext context) {
    if (order.status == OffRampOrderStatus.depositTxRequired) {
      return OffRampConfirmation(order: order);
    }

    final isMoneygramOrder = order.partner == RampPartner.moneygram;

    final locale = DeviceLocale.localeOf(context);

    void handleCanceled() => showConfirmationDialog(
          context,
          title: context.l10n.offRampCancelTitle.toUpperCase(),
          message: context.l10n.offRampCancelSubtitle,
          onConfirm: () {
            sl<OffRampOrderService>().cancel(order.id);
          },
        );

    void handleRetry() => sl<OffRampOrderService>().retry(order.id);

    // Todo this should have handler
    Future<void> handleContinue() async {
      final withdrawUrl = order.withdrawUrl ?? '';
      await WebViewScreen.push(
        context,
        url: Uri.parse(withdrawUrl),
        title: context.l10n.ramp_titleCashOut,
        theme: const CpThemeData.light(),
      );
    }

    Future<void> handleMoreInfo() async {
      final withdrawUrl = order.moreInfoUrl ?? '';
      await WebViewScreen.push(
        context,
        url: Uri.parse(withdrawUrl),
        title: context.l10n.ramp_titleCashOut,
        theme: const CpThemeData.light(),
      );
    }

    final String? statusTitle = order.status == OffRampOrderStatus.completed
        ? context.l10n.transferSuccessTitle
        : null;

    final totalAmount =
        order.fee?.let((fee) => order.amount + fee) ?? order.amount;

    final String statusContent = switch (order.status) {
      OffRampOrderStatus.preProcessing ||
      OffRampOrderStatus.postProcessing || // => 'Bridging USDC to Stellar',
      OffRampOrderStatus.depositTxRequired ||
      OffRampOrderStatus.creatingDepositTx ||
      OffRampOrderStatus.depositTxReady ||
      OffRampOrderStatus.sendingDepositTx =>
        context.l10n.offRampWithdrawOngoing(
          totalAmount.format(locale),
        ),
      OffRampOrderStatus.waitingForPartner =>
        context.l10n.offRampWaitingForPartner,
      OffRampOrderStatus.depositTxConfirmError ||
      OffRampOrderStatus.depositError =>
        context.l10n.offRampDepositError,
      OffRampOrderStatus.failure => context.l10n.offRampWithdrawalFailure,
      OffRampOrderStatus.completed => context.l10n.offRampWithdrawSuccess,
      OffRampOrderStatus.cancelled => context.l10n.offRampWithdrawCancelled(
          totalAmount.format(locale),
        ),
      OffRampOrderStatus.insufficientFunds =>
        '${context.l10n.splitKeyErrorMessage2} ${context.l10n.errorMessageInsufficientFunds}',
    };

    final Widget? primaryButton = switch (order.status) {
      OffRampOrderStatus.depositError ||
      OffRampOrderStatus.depositTxConfirmError ||
      OffRampOrderStatus.insufficientFunds =>
        _RetryButton(handleRetry: handleRetry),
      OffRampOrderStatus.failure => const _ContactUsButton(),
      OffRampOrderStatus.postProcessing =>
        _ContinueButton(handleContinue: handleContinue),
      OffRampOrderStatus.waitingForPartner => isMoneygramOrder
          ? _MoreInfoButton(handleMoreInfo: handleMoreInfo)
          : null,
      OffRampOrderStatus.preProcessing ||
      OffRampOrderStatus.depositTxRequired ||
      OffRampOrderStatus.creatingDepositTx ||
      OffRampOrderStatus.depositTxReady ||
      OffRampOrderStatus.sendingDepositTx ||
      OffRampOrderStatus.completed ||
      OffRampOrderStatus.cancelled =>
        null,
    };

    final showCancelButton = order.status == OffRampOrderStatus.depositError ||
        order.status == OffRampOrderStatus.postProcessing;

    return StatusScreen(
      title: context.l10n.offRampWithdrawTitle.toUpperCase(),
      statusType: order.status.toStatusType(),
      statusTitle: statusTitle?.let(Text.new),
      statusContent: Text(statusContent),
      content: CpContentPadding(
        child: Column(
          children: [
            const Spacer(flex: 1),
            _Timeline(
              order: order,
              amount: totalAmount,
            ),
            const Spacer(flex: 4),
            PartnerOrderIdWidget(orderId: order.partnerOrderId),
            if (primaryButton != null) ...[
              const SizedBox(height: 12),
              primaryButton,
            ],
            Opacity(
              opacity: showCancelButton ? 1 : 0,
              child: _CancelButton(handleCanceled: handleCanceled),
            ),
          ],
        ),
      ),
    );
  }
}

class _RetryButton extends StatelessWidget {
  const _RetryButton({required this.handleRetry});

  final VoidCallback handleRetry;

  @override
  Widget build(BuildContext context) => CpButton(
        size: CpButtonSize.big,
        width: double.infinity,
        text: context.l10n.retry,
        onPressed: handleRetry,
      );
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton({required this.handleContinue});

  final VoidCallback handleContinue;

  @override
  Widget build(BuildContext context) => CpButton(
        size: CpButtonSize.big,
        width: double.infinity,
        // todo add to l10n
        text: context.l10n.openMoneygram,
        onPressed: handleContinue,
      );
}

class _MoreInfoButton extends StatelessWidget {
  const _MoreInfoButton({required this.handleMoreInfo});

  final VoidCallback handleMoreInfo;

  @override
  Widget build(BuildContext context) => CpButton(
        size: CpButtonSize.big,
        width: double.infinity,
        // todo add to l10n
        text: context.l10n.moreInfo,
        onPressed: handleMoreInfo,
      );
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({required this.handleCanceled});

  final VoidCallback handleCanceled;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          top: 24,
          bottom: MediaQuery.paddingOf(context).bottom + 16,
        ),
        child: CpTextButton(
          text: context.l10n.outgoingSplitKeyPayments_btnCancel,
          variant: CpTextButtonVariant.light,
          onPressed: handleCanceled,
        ),
      );
}

class _ContactUsButton extends StatelessWidget {
  const _ContactUsButton();

  @override
  Widget build(BuildContext context) => CpButton(
        size: CpButtonSize.big,
        width: double.infinity,
        text: context.l10n.contactUs,
        onPressed: () => sl<IntercomService>().displayMessenger(),
      );
}

class _Timeline extends StatelessWidget {
  const _Timeline({
    required this.order,
    required this.amount,
  });

  final OffRampOrder order;
  final Amount amount;

  @override
  Widget build(BuildContext context) {
    final isMoneygramOrder = order.partner == RampPartner.moneygram;
    final CpTimelineStatus timelineStatus = order.status.toTimelineStatus();
    final animated = timelineStatus == CpTimelineStatus.inProgress;
    final int activeItem = isMoneygramOrder
        ? order.status.toActiveItemForMoneygram()
        : order.status.toActiveItem();

    final withdrawInitiated = CpTimelineItem(
      title: context.l10n.offRampWithdrawInitiated,
      trailing: amount.format(context.locale),
      subtitle: order.created.let((t) => context.formatDate(t)),
    );
    final bridgingToStellar = CpTimelineItem(
      title: context.l10n.bridgingText,
    );
    final amountSent = CpTimelineItem(
      title: context.l10n.offRampWithdrawSent,
    );
    final paymentSuccess = CpTimelineItem(
      title: context.l10n.offRampWithdrawReceived,
      subtitle: order.resolved?.let((t) => context.formatDate(t)),
    );
    final paymentCanceled = CpTimelineItem(
      title: context.l10n.offRampWithdrawCancelledTitle,
      subtitle: order.resolved?.let((t) => context.formatDate(t)),
    );

    final normalItems = [
      withdrawInitiated,
      amountSent,
      paymentSuccess,
    ];

    if (isMoneygramOrder) {
      normalItems.insert(1, bridgingToStellar);
    }

    final cancelingItems = [
      withdrawInitiated,
      paymentCanceled,
    ];

    final items = order.status == OffRampOrderStatus.cancelled
        ? cancelingItems
        : normalItems;

    return CpTimeline(
      status: timelineStatus,
      items: items,
      active: activeItem,
      animated: animated,
    );
  }
}

extension on OffRampOrderStatus {
  CpStatusType toStatusType() => switch (this) {
        OffRampOrderStatus.preProcessing ||
        OffRampOrderStatus.postProcessing ||
        OffRampOrderStatus.depositTxRequired ||
        OffRampOrderStatus.creatingDepositTx ||
        OffRampOrderStatus.depositTxReady ||
        OffRampOrderStatus.sendingDepositTx ||
        OffRampOrderStatus.waitingForPartner =>
          CpStatusType.info,
        OffRampOrderStatus.depositError ||
        OffRampOrderStatus.depositTxConfirmError ||
        OffRampOrderStatus.insufficientFunds ||
        OffRampOrderStatus.failure =>
          CpStatusType.error,
        OffRampOrderStatus.completed => CpStatusType.success,
        OffRampOrderStatus.cancelled => CpStatusType.neutral,
      };

  CpTimelineStatus toTimelineStatus() => switch (this) {
        OffRampOrderStatus.depositTxRequired ||
        OffRampOrderStatus.creatingDepositTx ||
        OffRampOrderStatus.depositTxReady ||
        OffRampOrderStatus.sendingDepositTx ||
        OffRampOrderStatus.preProcessing ||
        OffRampOrderStatus.postProcessing ||
        OffRampOrderStatus.waitingForPartner =>
          CpTimelineStatus.inProgress,
        OffRampOrderStatus.depositTxConfirmError ||
        OffRampOrderStatus.depositError ||
        OffRampOrderStatus.insufficientFunds ||
        OffRampOrderStatus.failure =>
          CpTimelineStatus.failure,
        OffRampOrderStatus.completed => CpTimelineStatus.success,
        OffRampOrderStatus.cancelled => CpTimelineStatus.neutral,
      };

  int toActiveItem() => switch (this) {
        OffRampOrderStatus.preProcessing ||
        OffRampOrderStatus.postProcessing ||
        OffRampOrderStatus.depositTxRequired ||
        OffRampOrderStatus.creatingDepositTx ||
        OffRampOrderStatus.depositTxReady ||
        OffRampOrderStatus.sendingDepositTx ||
        OffRampOrderStatus.depositError ||
        OffRampOrderStatus.depositTxConfirmError ||
        OffRampOrderStatus.insufficientFunds ||
        OffRampOrderStatus.cancelled =>
          1,
        OffRampOrderStatus.waitingForPartner ||
        OffRampOrderStatus.failure ||
        OffRampOrderStatus.completed =>
          2,
      };

  int toActiveItemForMoneygram() => switch (this) {
        OffRampOrderStatus.preProcessing ||
        OffRampOrderStatus.sendingDepositTx ||
        OffRampOrderStatus.depositError ||
        OffRampOrderStatus.depositTxConfirmError ||
        OffRampOrderStatus.insufficientFunds ||
        OffRampOrderStatus.cancelled =>
          1,
        OffRampOrderStatus.postProcessing ||
        OffRampOrderStatus.depositTxRequired ||
        OffRampOrderStatus.creatingDepositTx ||
        OffRampOrderStatus.depositTxReady =>
          2,
        OffRampOrderStatus.waitingForPartner ||
        OffRampOrderStatus.failure ||
        OffRampOrderStatus.completed =>
          3,
      };
}
