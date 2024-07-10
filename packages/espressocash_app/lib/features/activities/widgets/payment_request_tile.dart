import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/device_locale.dart';
import '../../../../l10n/l10n.dart';
import '../../../utils/extensions.dart';
import '../../payment_request/data/watch_payment_request.dart';
import '../../payment_request/models/payment_request.dart';
import '../../payment_request/screens/payment_request_screen.dart';
import '../../payment_request/widgets/formatted_amount.dart';
import 'activity_tile.dart';

class PaymentRequestTile extends StatefulWidget {
  const PaymentRequestTile({
    super.key,
    required this.id,
    this.showIcon = true,
  });

  final String id;
  final bool showIcon;

  @override
  State<PaymentRequestTile> createState() => _PaymentRequestTileState();
}

class _PaymentRequestTileState extends State<PaymentRequestTile> {
  late Stream<PaymentRequest> _stream;
  String? _formattedAmount;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _stream = watchPaymentRequest(widget.id);
    _fetchFormattedAmount();
  }

  Future<void> _fetchFormattedAmount() async {
    final paymentRequest = await _stream.first;

    if (mounted) {
      await paymentRequest
          .formattedAmount(DeviceLocale.localeOf(context))
          .letAsync((value) {
        setState(() {
          _formattedAmount = value;
          _isLoading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<PaymentRequest>(
        stream: _stream,
        builder: (context, snapshot) {
          final data = snapshot.data;

          return (data == null || _isLoading)
              ? SizedBox.shrink(key: ValueKey(widget.id))
              : CpActivityTile(
                  key: ValueKey(widget.id),
                  title: context.l10n.paymentRequestTitle,
                  icon: Assets.icons.paymentIcon.svg(),
                  timestamp: context.formatDate(data.created),
                  incomingAmount: _formattedAmount,
                  status: switch (data.state) {
                    PaymentRequestState.initial =>
                      CpActivityTileStatus.inProgress,
                    PaymentRequestState.completed =>
                      CpActivityTileStatus.success,
                    PaymentRequestState.error => CpActivityTileStatus.failure,
                  },
                  onTap: () => PaymentRequestScreen.push(context, id: data.id),
                  showIcon: widget.showIcon,
                );
        },
      );
}
