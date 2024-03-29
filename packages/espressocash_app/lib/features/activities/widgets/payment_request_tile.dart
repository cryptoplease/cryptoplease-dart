import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/format_date.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/device_locale.dart';
import '../../../../l10n/l10n.dart';
import '../../../routing.dart';
import '../../payment_request/data/watch_payment_request.dart';
import '../../payment_request/models/payment_request.dart';
import '../../payment_request/screens/link_details_flow_screen.dart';
import '../../payment_request/widgets/formatted_amount.dart';
import '../../payment_request/widgets/payment_request_verifier.dart';
import 'activity_tile.dart';

class PaymentRequestTile extends StatefulWidget {
  const PaymentRequestTile({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<PaymentRequestTile> createState() => _PaymentRequestTileState();
}

class _PaymentRequestTileState extends State<PaymentRequestTile> {
  late Stream<PaymentRequest> _stream;

  @override
  void initState() {
    super.initState();
    _stream = watchPaymentRequest(widget.id);
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<PaymentRequest>(
        stream: _stream,
        builder: (context, snapshot) {
          final data = snapshot.data;

          return data == null
              ? SizedBox.shrink(key: ValueKey(widget.id))
              : PaymentRequestVerifier(
                  key: ValueKey(widget.id),
                  paymentRequest: data,
                  child: CpActivityTile(
                    title: context.l10n.paymentRequestTitle,
                    icon: Assets.icons.paymentIcon.svg(),
                    timestamp: context.formatDate(data.created),
                    incomingAmount:
                        data.formattedAmount(DeviceLocale.localeOf(context)),
                    status: data.state.map(
                      initial: always(CpActivityTileStatus.inProgress),
                      completed: always(CpActivityTileStatus.success),
                      failure: always(CpActivityTileStatus.failure),
                    ),
                    onTap: () => SharePaymentRequestRoute(data.id).go(context),
                  ),
                );
        },
      );
}
