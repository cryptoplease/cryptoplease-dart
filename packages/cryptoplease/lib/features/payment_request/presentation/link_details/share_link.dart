import 'package:auto_route/auto_route.dart';
import 'package:cryptoplease/core/presentation/format_amount.dart';
import 'package:cryptoplease/core/presentation/utils.dart';
import 'package:cryptoplease/core/tokens/token_list.dart';
import 'package:cryptoplease/di.dart';
import 'package:cryptoplease/features/payment_request/bl/payment_request.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease/ui/app_bar.dart';
import 'package:cryptoplease/ui/button.dart';
import 'package:cryptoplease/ui/colors.dart';
import 'package:cryptoplease/ui/content_padding.dart';
import 'package:cryptoplease/ui/share_message/share_message_bubble.dart';
import 'package:cryptoplease/ui/share_message/share_message_header.dart';
import 'package:cryptoplease/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class SharePaymentRequestLinkScreen extends StatelessWidget {
  const SharePaymentRequestLinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tokenlist = sl<TokenList>();
    final request = context.watch<PaymentRequest>();
    final amount =
        request.payRequest.cryptoAmount(tokenlist)?.formatWithFiat(context) ??
            '';

    final message = context.l10n.sharePaymentRequestLinkMessage(
      amount,
      request.dynamicLink,
    );

    final title = Text(
      context.l10n.sharePaymentRequestLinkTitle.toUpperCase(),
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
    );

    final subtitle = Text(
      context.l10n.sharePaymentRequestLinkDescription,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
    );

    final shareButton = CpButton(
      text: context.l10n.share,
      width: double.infinity,
      size: CpButtonSize.big,
      onPressed: () => Share.share(message),
    );

    final messageBubble = ShareMessageBubble(
      textSpan: TextSpan(
        children: [
          ShareMessageHeader(
            intro: context.l10n.sharePaymentRequestLinkIntro,
            amount: amount,
          ),
          const WidgetSpan(child: _Instructions()),
          WidgetSpan(child: _Links(link: request.dynamicLink)),
        ],
      ),
    );

    return CpTheme.dark(
      child: Scaffold(
        appBar: CpAppBar(
          title: title,
          leading: BackButton(onPressed: () => context.router.pop()),
        ),
        body: CpContentPadding(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: subtitle,
              ),
              Flexible(child: messageBubble),
              const SizedBox(height: 24),
              shareButton,
            ],
          ),
        ),
      ),
    );
  }
}

class _Instructions extends StatelessWidget {
  const _Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          children: [
            _newLine,
            TextSpan(text: context.l10n.sharePaymentRequestLinkInstructions),
            _newLine,
          ],
          style: const TextStyle(fontSize: 18),
        ),
      );
}

class _Links extends StatelessWidget {
  const _Links({
    Key? key,
    required this.link,
  }) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          text: link.withZeroWidthSpaces(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: CpColors.linkColor,
          ),
        ),
      );
}

const _newLine = TextSpan(text: '\n\n');
