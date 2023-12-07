import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../l10n/l10n.dart';
import '../../../../../../ui/app_bar.dart';
import '../../../../../../ui/back_button.dart';
import '../../../../../../ui/info_widget.dart';
import '../../../../../../ui/onboarding_screen.dart';
import '../../../../../../ui/theme.dart';
import '../../../../routes.gr.dart';

@RoutePage()
class ViewPhraseWarningScreen extends StatelessWidget {
  const ViewPhraseWarningScreen({super.key, required this.onConfirmed});

  final VoidCallback onConfirmed;

  static const route = ViewPhraseWarningRoute.new;

  @override
  Widget build(BuildContext context) => CpTheme.black(
        child: Scaffold(
          body: OnboardingScreen(
            footer: OnboardingFooterButton(
              text: context.l10n.iUnderstand,
              onPressed: onConfirmed,
            ),
            children: [
              CpAppBar(
                leading: CpBackButton(onPressed: () => context.router.pop()),
              ),
              const OnboardingLogo(),
              OnboardingPadding(
                child: CpInfoWidget(
                  message: Text(context.l10n.recoveryWarningInfo),
                  variant: CpInfoVariant.black,
                ),
              ),
              const SizedBox(height: 38),
              OnboardingDescription(
                text: context.l10n.recoveryWarningParagraph,
              ),
            ],
          ),
        ),
      );
}
