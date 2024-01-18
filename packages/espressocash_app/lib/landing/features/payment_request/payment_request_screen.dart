import 'package:flutter/material.dart';
import 'package:solana/solana_pay.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/link_payments.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/button.dart';
import '../../core/desktop.dart';
import '../../core/extensions.dart';
import '../../core/landing_widget.dart';
import '../../core/presentation/step_circle.dart';

class RequestPaymentScreen extends StatelessWidget {
  const RequestPaymentScreen(this.request, {super.key});

  final SolanaPayRequest request;

  @override
  Widget build(BuildContext context) {
    final actionLink = Uri.parse(request.toUrl());

    return isMobile
        ? _MobileView(
            actionLink: actionLink,
            title: request.headerTitle,
          )
        : EspressoDesktopView(
            actionLink: actionLink,
            header: HeaderDesktop(
              title: request.headerTitle,
            ),
          );
  }
}

class _MobileView extends StatelessWidget {
  const _MobileView({
    required this.actionLink,
    required this.title,
  });

  final Uri actionLink;
  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: LandingMobileWidget(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.35,
              child: Center(
                child: Assets.images.logo.image(height: 57),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              context.l10n.landingInstruction,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 32),
            _MobileButton(
              step: 1,
              onTap: context.launchStore,
              text: context.l10n.landingInstallApp,
            ),
            const SizedBox(height: 12),
            Text(
              context.l10n.landingAlreadyInstalled,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 32),
            _MobileButton(
              step: 2,
              onTap: () => launchUrl(
                actionLink,
                mode: LaunchMode.externalNonBrowserApplication,
                webOnlyWindowName: '_self',
              ),
              text: context.l10n.landingReceiveMoney,
            ),
          ],
        ),
      );
}

class _MobileButton extends StatelessWidget {
  const _MobileButton({
    required this.step,
    required this.text,
    required this.onTap,
  });
  final int step;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => CpButton(
        size: CpButtonSize.big,
        minWidth: 300,
        width: 500,
        leading: StepCircle(step),
        text: text,
        trailing: const Icon(Icons.arrow_forward_ios),
        onPressed: onTap,
      );
}

extension on SolanaPayRequest {
  String get headerTitle {
    final name = label;
    final amount = this.amount ?? 0;

    return name == null
        ? 'You have a request of $amount USDC'
        : '$name has requested $amount USDC';
  }
}