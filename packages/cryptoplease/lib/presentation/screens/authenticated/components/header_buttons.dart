import 'package:auto_route/auto_route.dart';
import 'package:cryptoplease/bl/accounts/account.dart';
import 'package:cryptoplease/gen/assets.gen.dart';
import 'package:cryptoplease/l10n/l10n.dart';
import 'package:cryptoplease/presentation/routes.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class AddFundsButton extends StatelessWidget {
  const AddFundsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderedListButton(
        label: context.l10n.addFunds,
        icon: SvgPicture.asset(Assets.icons.add.path),
        onPressed: () => context.router.navigate(
          AddFundsRoute(wallet: context.read<MyAccount>().wallet),
        ),
      );
}

class SendButton extends StatelessWidget {
  const SendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderedListButton(
        label: context.l10n.send,
        icon: SvgPicture.asset(Assets.icons.send.path),
        onPressed: () => context.router.navigate(SendTokenFlowRoute()),
      );
}

class ReceiveButton extends StatelessWidget {
  const ReceiveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderedListButton(
        label: context.l10n.receive,
        icon: SvgPicture.asset(Assets.icons.receive.path),
        onPressed: () => context.router.navigate(const ReceiveMoneyRoute()),
      );
}
