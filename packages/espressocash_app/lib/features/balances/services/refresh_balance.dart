import 'package:injectable/injectable.dart';

import '../../../di.dart';
import '../../accounts/models/ec_wallet.dart';
import '../../authenticated/auth_scope.dart';
import 'balances_bloc.dart';

// TODO(JE): implement into other services
@Singleton(scope: authScope)
class RefreshBalance {
  const RefreshBalance(this._wallet);

  final ECWallet _wallet;

  void call() =>
      sl<BalancesBloc>().add(BalancesEventRequested(address: _wallet.address));
}
