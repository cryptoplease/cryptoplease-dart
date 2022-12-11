import 'package:auto_route/auto_route.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/accounts/bl/account.dart';
import '../../../../core/balances/bl/balances_bloc.dart';
import '../../../../core/tokens/token.dart';
import '../../../../di.dart';
import '../../../../l10n/l10n.dart';
import '../../../../routes.gr.dart';
import '../../../../ui/app_bar.dart';
import '../../../../ui/colors.dart';
import '../../../../ui/theme.dart';
import 'components/swap_exception_dialog.dart';
import 'create_swap/bloc.dart';
import 'create_swap/create_swap_screen.dart';
import 'create_swap/operation.dart';
import 'route.dart';

class SwapFlowScreen extends StatefulWidget {
  const SwapFlowScreen({
    Key? key,
    required this.inputToken,
    required this.outputToken,
  }) : super(key: key);

  final Token inputToken;
  final Token outputToken;

  @override
  State<SwapFlowScreen> createState() => _FlowState();
}

class _FlowState extends State<SwapFlowScreen> {
  late final CreateSwapBloc createSwapBloc;
  late final SwapOperation operation;

  @override
  void initState() {
    super.initState();

    operation = widget.inputToken == Token.usdc
        ? SwapOperation.buy
        : SwapOperation.sell;

    createSwapBloc = sl<CreateSwapBloc>(
      param1: SwapSetup(
        input: widget.inputToken,
        output: widget.outputToken,
        initialEditingMode: operation.toInitialEditingMode(),
        userAccount: context.read<MyAccount>().wallet.publicKey,
      ),
      param2: context.read<BalancesBloc>().state.balances,
    );
  }

  @override
  void dispose() {
    createSwapBloc.close();
    super.dispose();
  }

  void _onSwapException(CreateSwapException e) => showSwapExceptionDialog(
        context,
        context.l10n.swapErrorTitle,
        e,
      );

  void _onRouteReady(SwapRoute route) => context.router.replace(
        ProcessSwapRoute(route: route),
      );

  @override
  Widget build(BuildContext context) =>
      BlocListener<CreateSwapBloc, CreateSwapState>(
        bloc: createSwapBloc,
        listenWhen: (prev, cur) => prev.flowState != cur.flowState,
        listener: (context, state) => state.flowState.whenOrNull(
          failure: _onSwapException,
          success: _onRouteReady,
        ),
        child: AnnotatedRegion(
          value: SystemUiOverlayStyle.light.copyWith(
            statusBarBrightness: Brightness.dark,
          ),
          child: CpTheme.dark(
            child: Scaffold(
              backgroundColor: CpColors.darkBackground,
              appBar: CpAppBar(
                leading: const CloseButton(),
                title: Text(
                  operation.title(
                    context,
                    widget.inputToken,
                    widget.outputToken,
                  ),
                ),
              ),
              body: BlocProvider<CreateSwapBloc>.value(
                value: createSwapBloc,
                child: const CreateSwapScreen(),
              ),
            ),
          ),
        ),
      );
}

extension on SwapOperation {
  String title(BuildContext context, Token input, Token output) {
    switch (this) {
      case SwapOperation.buy:
        return context.l10n.buyToken(output.symbol);
      case SwapOperation.sell:
        return context.l10n.sellToken(input.symbol);
    }
  }
}
