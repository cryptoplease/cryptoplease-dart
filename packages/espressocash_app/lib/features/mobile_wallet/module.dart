import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

import '../../di.dart';
import '../../routing.dart';
import 'data/repository.dart';
import 'screens/remote_request_screen.dart';
import 'services/scenario_handler.dart';

class MobileWalletModule extends SingleChildStatelessWidget {
  const MobileWalletModule({
    super.key,
    super.child,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => MultiProvider(
        providers: [
          Provider(lazy: false, create: (_) => sl<ScenarioHandler>()),
          ChangeNotifierProvider.value(value: sl<MobileWalletRepository>()),
        ],
        child: MobileWalletListener(
          child: child ?? const SizedBox.shrink(),
        ),
      );
}

class MobileWalletListener extends StatefulWidget {
  const MobileWalletListener({super.key, required this.child});

  final Widget child;

  @override
  State<MobileWalletListener> createState() => _MobileWalletListenerState();
}

class _MobileWalletListenerState extends State<MobileWalletListener> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.watch<MobileWalletRepository>().processNotification(
          (notification) => notification.when(
            initialized: ignore,
            sessionTerminated: SystemNavigator.pop,
            deauthorized: SystemNavigator.pop,
            request: (r) => RemoteRequestRoute(r).push<void>(context),
          ),
        );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
