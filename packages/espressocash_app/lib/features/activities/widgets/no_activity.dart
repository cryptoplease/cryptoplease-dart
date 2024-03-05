import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../ui/button.dart';
import '../../../../ui/navigation_bar/navigation_bar.dart';
import '../../../routing.dart';
import '../../wallet_flow/screens/wallet_screen.dart';

class NoActivity extends StatelessWidget {
  const NoActivity({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Assets.images.logoIcon.image(height: 101),
            const SizedBox(height: 21),
            Text(context.l10n.noActivity),
            const Spacer(),
            CpButton(
              text: context.l10n.requestOrSendPayment,
              width: double.infinity,
              size: CpButtonSize.big,
              onPressed: () => const WalletRoute().push<void>(context),
            ),
            const Spacer(),
            const SizedBox(height: cpNavigationBarheight),
          ],
        ),
      );
}
