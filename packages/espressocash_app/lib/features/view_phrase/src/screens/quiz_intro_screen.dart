import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../routes.gr.dart';
import '../../../../ui/back_button.dart';
import '../../../../ui/button.dart';
import '../widgets/quiz_page.dart';

@RoutePage()
class QuizIntroScreen extends StatelessWidget {
  const QuizIntroScreen({super.key, required this.onConfirmed});

  static const route = QuizIntroRoute.new;

  final VoidCallback onConfirmed;

  @override
  Widget build(BuildContext context) => QuizPage(
        title: context.l10n.quizIntroTitle.toUpperCase(),
        type: QuizPageType.light,
        backButton: CpBackButton(
          onPressed: () => context.router.pop(),
        ),
        content: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Assets.images.quizIntroBg.image(
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              height: 120,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00B7A572), Color(0xFFB7A572)],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                context.l10n.quizIntroDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.23,
                ),
              ),
            ),
          ],
        ),
        footer: [
          CpButton(
            text: context.l10n.quizStart,
            onPressed: onConfirmed,
            size: CpButtonSize.big,
            width: 350,
          ),
        ],
      );
}