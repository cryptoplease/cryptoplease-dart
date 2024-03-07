import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../di.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/device_locale.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/app_bar.dart';
import '../../../ui/back_button.dart';
import '../../../ui/theme.dart';
import '../../balances/widgets/context_ext.dart';
import '../data/repository.dart';
import '../models/payment_request.dart';
import '../services/payment_request_verifier_bloc.dart';
import '../widgets/formatted_amount.dart';
import '../widgets/tx_result_screen.dart';
import 'share_payment_request_screen.dart';

class LinkDetailsFlowScreen extends StatefulWidget {
  const LinkDetailsFlowScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<LinkDetailsFlowScreen> createState() => _LinkDetailsFlowScreenState();
}

class _LinkDetailsFlowScreenState extends State<LinkDetailsFlowScreen> {
  late final Stream<PaymentRequest> _stream;

  @override
  void initState() {
    super.initState();
    _stream = sl<PaymentRequestRepository>().watchById(widget.id);
  }

  @override
  Widget build(BuildContext context) => CpTheme.black(
        child: StreamBuilder<PaymentRequest>(
          stream: _stream,
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (data == null) return const _Loader();

            return data.state.when(
              initial: () => BlocProvider<PaymentRequestVerifierBloc>(
                create: (_) => sl<PaymentRequestVerifierBloc>(param1: data),
                lazy: false,
                child: BlocListener<PaymentRequestVerifierBloc,
                    PaymentRequestVerifierState>(
                  listener: (context, state) => state.whenOrNull(
                    success: () => context.notifyBalanceAffected(),
                  ),
                  child: Provider<PaymentRequest>.value(
                    value: data,
                    child: const SharePaymentRequestScreen(),
                  ),
                ),
              ),
              completed: (_) => _Success(request: data),
              failure: () => _Failure(request: data),
            );
          },
        ),
      );
}

class SharePaymentRequestRoute extends GoRouteData {
  const SharePaymentRequestRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      LinkDetailsFlowScreen(id: id);
}

class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CpAppBar(
          leading: CpBackButton(onPressed: () => context.pop()),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
}

class _Success extends StatelessWidget {
  const _Success({required this.request});

  final PaymentRequest request;

  @override
  Widget build(BuildContext context) => TxResultScreen(
        icon: Assets.icons.txSucceeded,
        text: context.l10n.paymentRequestSuccessNotificationTitle(
          request.formattedAmount(DeviceLocale.localeOf(context)),
        ),
        signature: null,
      );
}

class _Failure extends StatelessWidget {
  const _Failure({
    required this.request,
  });

  final PaymentRequest request;

  @override
  Widget build(BuildContext context) => TxResultScreen(
        icon: Assets.icons.txFailed,
        text: context.l10n.paymentRequestFailureNotificationTitle(
          request.formattedAmount(DeviceLocale.localeOf(context)),
        ),
        signature: null,
      );
}
