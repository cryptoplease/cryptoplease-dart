import 'package:flutter/widgets.dart';

import '../../../di.dart';
import '../data/on_ramp_order_service.dart';
import '../kado/services/on_ramp_order_watcher.dart';
import '../models/ramp_partner.dart';
import '../src/models/ramp_watcher.dart';

export '../data/on_ramp_order_service.dart' show OnRampOrder;

class OnRampOrderDetails extends StatefulWidget {
  const OnRampOrderDetails({
    super.key,
    required this.orderId,
    required this.builder,
  });

  final String orderId;
  final Widget Function(BuildContext context, OnRampOrder? order) builder;

  @override
  State<OnRampOrderDetails> createState() => _OnRampOrderDetailsState();
}

class _OnRampOrderDetailsState extends State<OnRampOrderDetails> {
  late final Stream<OnRampOrder> _stream;
  RampWatcher? _watcher;

  @override
  void initState() {
    super.initState();
    _stream = sl<OnRampOrderService>().watch(widget.orderId);

    _initWatcher();
  }

  Future<void> _initWatcher() async {
    if (_watcher != null) return;

    final onRamp = await _stream.first;

    _watcher = switch (onRamp.partner) {
      RampPartner.kado => sl<KadoOnRampOrderWatcher>(),
      RampPartner.rampNetwork ||
      RampPartner.coinflow ||
      RampPartner.guardarian =>
        throw ArgumentError('Not implemented'),
    }
      ..watch(widget.orderId);
  }

  @override
  void dispose() {
    _watcher?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => StreamBuilder(
        stream: _stream,
        builder: (context, snapshot) => widget.builder(context, snapshot.data),
      );
}
