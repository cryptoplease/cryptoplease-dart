import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:solana/solana.dart';

import '../../../di.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/bottom_button.dart';
import '../../../ui/colors.dart';
import '../../../ui/dialogs.dart';
import '../../../ui/number_formatter.dart';
import '../../conversion_rates/widgets/amount_with_equivalent.dart';
import '../../conversion_rates/widgets/extensions.dart';
import '../../currency/models/amount.dart';
import '../../fees/models/fee_type.dart';
import '../../fees/services/fee_calculator.dart';
import '../../tokens/token.dart';
import '../widgets/token_app_bar.dart';

class TokenSendConfirmationScreen extends StatefulWidget {
  const TokenSendConfirmationScreen({
    super.key,
    required this.initialAmount,
    required this.recipient,
    required this.token,
  });

  static Future<Decimal?> push(
    BuildContext context, {
    required String initialAmount,
    required Ed25519HDPublicKey recipient,
    required Token token,
  }) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TokenSendConfirmationScreen(
            initialAmount: initialAmount,
            recipient: recipient,
            token: token,
          ),
        ),
      );

  final String initialAmount;
  final Ed25519HDPublicKey recipient;
  final Token token;

  @override
  State<TokenSendConfirmationScreen> createState() =>
      _TokenSendConfirmationScreenState();
}

class _TokenSendConfirmationScreenState
    extends State<TokenSendConfirmationScreen> {
  late final TextEditingController _amountController;
  late Future<CryptoAmount> _feeAmount;

  @override
  void initState() {
    super.initState();
    final feeType = FeeTypeDirect(widget.recipient, token: widget.token);

    _amountController = TextEditingController(text: widget.initialAmount);
    _feeAmount = sl<FeeCalculator>().call(feeType);
  }

  void _handleSubmitted() {
    final locale = DeviceLocale.localeOf(context);
    final amount = _amountController.text.toDecimalOrZero(locale);
    if (amount == Decimal.zero) {
      showWarningDialog(
        context,
        title: context.l10n.zeroAmountTitle,
        message: context.l10n.zeroAmountMessage(context.l10n.operationSend),
      );

      return;
    }

    Navigator.pop(context, amount);
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: CpColors.deepGreyColor,
        body: Stack(
          children: [
            SafeArea(
              minimum: const EdgeInsets.only(bottom: 40),
              child: NestedScrollView(
                headerSliverBuilder: (context, _) => [
                  TokenAppBar(
                    token: widget.token,
                    color: CpColors.deepGreyColor,
                    displayText: false,
                  ),
                ],
                physics: const NeverScrollableScrollPhysics(),
                body: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(31),
                    topRight: Radius.circular(31),
                  ),
                  child: LayoutBuilder(
                    builder: (
                      BuildContext context,
                      BoxConstraints viewportConstraints,
                    ) =>
                        DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            const SizedBox(height: 36),
                            Expanded(
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: CpColors.deepGreyColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(31),
                                    topRight: Radius.circular(31),
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      AmountWithEquivalent(
                                        inputController: _amountController,
                                        token: widget.token,
                                        collapsed: false,
                                        backgroundColor: CpColors.deepGreyColor,
                                      ),
                                      const SizedBox(height: 72),
                                      FutureBuilder(
                                        future: _feeAmount,
                                        builder: (context, fee) => _InfoTable(
                                          walletAddress: widget.recipient
                                              .toString()
                                              .shortened,
                                          fees: context.feeStatus(fee),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            CpBottomButton(
                              text: context.l10n.send,
                              onPressed: _handleSubmitted,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class _InfoTable extends StatelessWidget {
  const _InfoTable({
    required this.walletAddress,
    required this.fees,
  });

  final String walletAddress;
  final String fees;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 28),
        decoration: const ShapeDecoration(
          color: CpColors.blackGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
        ),
        child: Column(
          children: [
            _InfoItem(
              label: context.l10n.walletAddress,
              value: walletAddress,
            ),
            const SizedBox(height: 6),
            _InfoItem(
              label: context.l10n.fees,
              value: fees,
            ),
          ],
        ),
      );
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.label,
    required this.value,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      );
}

extension on String {
  String get shortened {
    if (length < 16) return this;

    return '${substring(0, 8)}...${substring(length - 8, length)}';
  }
}

extension on BuildContext {
  String feeStatus(AsyncSnapshot<CryptoAmount> fee) {
    if (fee.connectionState == ConnectionState.waiting) {
      return 'Fetching fee...';
    }

    final data = fee.data;

    return !fee.hasData || data == null
        ? 'Unable to fetch fee'
        : data.format(
            DeviceLocale.localeOf(this),
            skipSymbol: false,
          );
  }
}
