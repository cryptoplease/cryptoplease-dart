import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../l10n/l10n.dart';
import '../../../../../ui/button.dart';
import '../../../../../ui/content_padding.dart';
import '../../../../../ui/theme.dart';
import '../../../routes.gr.dart';

@RoutePage()
class BackupPhraseSuccessScreen extends StatelessWidget {
  const BackupPhraseSuccessScreen({super.key, required this.onSolved});

  final VoidCallback onSolved;

  static const route = BackupPhraseSuccessRoute.new;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Assets.icons.logoBgGreen
                  .svg(alignment: Alignment.bottomCenter),
            ),
            CpContentPadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 110),
                  Assets.icons.successCheck.svg(width: 72, height: 72),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      context.l10n.backupPhrase_lblSuccessMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CpTheme.of(context).primaryTextColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                  CpButton(
                    size: CpButtonSize.big,
                    width: double.infinity,
                    text: context.l10n.ok,
                    onPressed: onSolved,
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
