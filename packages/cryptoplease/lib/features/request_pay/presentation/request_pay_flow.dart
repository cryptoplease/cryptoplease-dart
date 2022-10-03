import 'package:auto_route/auto_route.dart';
import 'package:cryptoplease/app/routes.dart';
import 'package:cryptoplease/app/screens/authenticated/flow.dart';
import 'package:cryptoplease/app/screens/authenticated/receive_flow/flow.dart';
import 'package:cryptoplease/core/amount.dart';
import 'package:cryptoplease/core/currency.dart';
import 'package:cryptoplease/core/presentation/dialogs.dart';
import 'package:cryptoplease/core/presentation/format_amount.dart';
import 'package:cryptoplease/features/outgoing_transfer/bl/outgoing_payment.dart';
import 'package:cryptoplease/features/outgoing_transfer/presentation/outgoing_transfer_flow/outgoing_transfer_flow.dart';
import 'package:cryptoplease/features/outgoing_transfer/presentation/send_flow/send_flow.dart';
import 'package:cryptoplease/features/qr_scanner/qr_address_data.dart';
import 'package:cryptoplease/features/qr_scanner/qr_scanner_request.dart';
import 'package:cryptoplease/features/request_pay/presentation/screens/request_pay_screen.dart';
import 'package:cryptoplease/l10n/device_locale.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RequestPayFlowScreen extends StatefulWidget {
  const RequestPayFlowScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RequestPayFlowScreen> createState() => _State();
}

class _State extends State<RequestPayFlowScreen> {
  CryptoAmount _amount = const CryptoAmount(value: 0, currency: Currency.usdc);

  Future<void> _onQrScanner() async {
    // final request =
    // await context.router.push<QrScannerRequest>(const QrScannerRoute());

    final request = QrScannerRequest.address(
        QrAddressData(address: 'address', name: 'name'));

    final address = request?.map(
      solanaPay: (r) => r.request.recipient.toBase58(),
      address: (r) => r.addressData.address,
    );
    final name = request?.map(
      solanaPay: (r) => r.request.label,
      address: (r) => r.addressData.name,
    );
    if (!mounted) return;

    if (address == null) {
      // TODO(KB): Show meaningful dialog
      await showWarningDialog(context, title: 'title', message: 'message');

      return;
    }

    final formatted = _amount.value == 0
        ? ''
        : _amount.format(DeviceLocale.localeOf(context), skipSymbol: true);

    final amount = await context.router.push<Decimal>(
      DirectPayRoute(
        initialAmount: formatted,
        recipient: address,
        label: name,
        token: _amount.token,
      ),
    );
    if (!mounted) return;

    if (amount != null) {
      setState(() => _amount = _amount.copyWith(value: 0));

      await context.router.push(
        DirectPayConfirmRoute(
          recipient: address,
          amount: Amount.fromDecimal(
            value: amount,
            currency: Currency.usdc,
          ),
        ),
      );
    }
  }

  void _onAmountUpdate(Decimal value) {
    if (value == _amount.decimal) return;

    setState(() => _amount = _amount.copyWithDecimal(value));
  }

  void _onRequest() {
    if (_amount.value == 0) {
      return _showZeroAmountDialog(_Operation.request);
    }

    context.navigateToReceiveByLink(amount: _amount);
  }

  void _onPay() {
    if (_amount.value == 0) {
      return _showZeroAmountDialog(_Operation.pay);
    }

    context.navigateToLinkConfirmation(amount: _amount);

    // _requestPayBloc.validate().fold(
    //   (e) => e.map(
    //     insufficientFunds: (e) => _showInsufficientTokenDialog(
    //       balance: e.balance,
    //       currentAmount: e.currentAmount,
    //     ),
    //     insufficientFee: (e) => _showInsufficientFeeDialog(e.requiredFee),
    //   ),
    //   (_) {
    //     if (recipient == null) {
    //       context.navigateToLinkConfirmation(amount: amount);
    //     } else {
    //       _requestPayBloc.add(const RequestPayEvent.directSubmitted());
    //       context.router.push(
    //         DirectPayConfirmRoute(onSubmitted: _onPaymentSubmitted),
    //       );
    //     }
    //   },
    // );
  }

  void _onPaymentSubmitted(OutgoingTransferId transferId) {
    context
      ..read<HomeRouterKey>().value.currentState?.controller?.popUntilRoot()
      ..navigateToOutgoingTransfer(transferId);
  }

  void _showZeroAmountDialog(_Operation operation) => showWarningDialog(
        context,
        title: context.l10n.zeroAmountTitle,
        message: context.l10n.zeroAmountMessage(operation.buildText(context)),
      );

  void _showInsufficientTokenDialog({
    required Amount balance,
    required Amount currentAmount,
  }) =>
      showWarningDialog(
        context,
        title: context.l10n.insufficientFundsTitle,
        message: context.l10n.insufficientFundsMessage(
          currentAmount.format(DeviceLocale.localeOf(context)),
          balance.format(DeviceLocale.localeOf(context)),
        ),
      );

  void _showInsufficientFeeDialog(Amount fee) => showWarningDialog(
        context,
        title: context.l10n.insufficientFundsForFeeTitle,
        message: context.l10n.insufficientFundsForFeeMessage(
          fee.currency.symbol,
          fee.format(DeviceLocale.localeOf(context)),
        ),
      );

  @override
  Widget build(BuildContext context) => CpTheme.dark(
        child: Scaffold(
          body: RequestPayScreen(
            onScan: _onQrScanner,
            onAmountChanged: _onAmountUpdate,
            onRequest: _onRequest,
            onPay: _onPay,
            amount: _amount,
          ),
        ),
      );
}

enum _Operation { request, pay }

extension on _Operation {
  String buildText(BuildContext context) {
    switch (this) {
      case _Operation.pay:
        return context.l10n.operationSend;
      case _Operation.request:
        return context.l10n.operationRequest;
    }
  }
}
