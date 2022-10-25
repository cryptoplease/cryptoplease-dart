import 'package:cryptoplease/app/components/onboarding_screen.dart';
import 'package:cryptoplease/features/onboarding/presentation/sign_up/sign_up_flow_screen.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease/ui/info_icon.dart';
import 'package:cryptoplease/ui/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

class RecoveryWarningScreen extends StatelessWidget {
  const RecoveryWarningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => OnboardingScreen(
        title: '',
        nextLabel: context.l10n.iUnderstand,
        onNextPressed: () =>
            context.read<SignUpRouter>().onRecoveryPhraseWarningCompleted(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CpInfoWidget(
              icon: const CpInfoIcon(),
              message: Text(
                context.l10n.recoveryWarningInfo,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Builder(
              builder: (context) => Markdown(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                styleSheet: MarkdownStyleSheet(
                  p: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: WrapAlignment.start,
                ),
                data: context.l10n.recoveryWarningParagraph,
              ),
            ),
          ],
        ),
      );
}
