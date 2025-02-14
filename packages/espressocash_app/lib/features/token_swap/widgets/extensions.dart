import 'package:flutter/material.dart';

import '../../../di.dart';
import '../../../ui/loader.dart';
import '../../accounts/models/account.dart';
import '../models/swap_route.dart';
import '../services/token_swap_service.dart';

extension BuildContextExt on BuildContext {
  Future<String> createSwap(SwapRoute route) => runWithLoader(this, () async {
        final swap = await sl<TokenSwapService>().create(
          account: sl<MyAccount>().wallet,
          route: route,
        );

        return swap.id;
      });

  Future<void> cancelSwap({required String id}) =>
      runWithLoader(this, () async {
        await sl<TokenSwapService>().cancel(id);
        Navigator.pop(this);
      });
}
