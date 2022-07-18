import 'package:auto_route/auto_route.dart';
import 'package:cryptoplease/app/components/number_formatter.dart';
import 'package:cryptoplease/app/routes.gr.dart';
import 'package:cryptoplease/app/screens/authenticated/receive_flow/flow.dart';
import 'package:cryptoplease/core/tokens/token.dart';
import 'package:cryptoplease/core/tokens/token_list.dart';
import 'package:cryptoplease/features/outgoing_transfer/presentation/send_flow/fungible_token/send_flow.dart';
import 'package:cryptoplease/features/request_pay/bl/request_pay_bloc.dart';
import 'package:cryptoplease/l10n/device_locale.dart';
import 'package:cryptoplease_ui/cryptoplease_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class RequestPayFlowScreen extends StatefulWidget {
  const RequestPayFlowScreen({Key? key}) : super(key: key);

  @override
  State<RequestPayFlowScreen> createState() => _State();
}

class _State extends State<RequestPayFlowScreen> implements RequestPayRouter {
  late final RequestPayBloc _requestPayBloc;

  @override
  void initState() {
    super.initState();
    _requestPayBloc = RequestPayBloc(
      tokenList: context.read<TokenList>(),
    )..add(const RequestPayEvent.initialized());
  }

  @override
  Future<void> onTokenSelect() async {
    final token = await context.router.push<Token>(
      RequestTokenSelectRoute(
        availableTokens: _requestPayBloc.state.availableTokens,
      ),
    );
    if (token == null) return;

    _requestPayBloc.add(
      RequestPayEvent.tokenUpdated(token),
    );
  }

  @override
  void onAmountUpdate(String value) {
    final locale = DeviceLocale.localeOf(context);
    final amount = value.toDecimalOrZero(locale);
    _requestPayBloc.add(
      RequestPayEvent.amountUpdated(amount),
    );
  }

  @override
  void onRequest() {
    final amount = _requestPayBloc.state.amount;
    context.navigateToReceiveByLink(amount: amount);
  }

  @override
  void onPay() {
    final amount = _requestPayBloc.state.amount;
    context.navigateToLinkConfirmation(amount: amount);
  }

  @override
  Widget build(BuildContext context) => CpTheme.dark(
        child: Scaffold(
          body: MultiProvider(
            providers: [
              BlocProvider<RequestPayBloc>(
                create: (_) => _requestPayBloc,
              ),
              Provider<RequestPayRouter>.value(value: this),
            ],
            child: const AutoRouter(),
          ),
        ),
      );
}

abstract class RequestPayRouter {
  void onTokenSelect();
  void onAmountUpdate(String value);
  void onRequest();
  void onPay();
}
