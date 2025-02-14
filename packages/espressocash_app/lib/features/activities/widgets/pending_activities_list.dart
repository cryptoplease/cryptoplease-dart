import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart' hide Notification;

import '../../../di.dart';
import '../../../ui/colors.dart';
import '../../../utils/extensions.dart';
import '../models/activity.dart';
import '../services/pending_activities_repository.dart';
import 'kyc_tile.dart';
import 'no_activity.dart';
import 'odp_tile.dart';
import 'off_ramp_tile.dart';
import 'olp_tile.dart';
import 'on_ramp_tile.dart';
import 'outgoing_dln_tile.dart';
import 'payment_request_tile.dart';
import 'swap_tile.dart';
import 'tr_tile.dart';

class PendingActivitiesList extends StatefulWidget {
  const PendingActivitiesList({super.key, this.padding});

  final EdgeInsetsGeometry? padding;

  @override
  State<PendingActivitiesList> createState() => _PendingActivitiesListState();
}

class _PendingActivitiesListState extends State<PendingActivitiesList> {
  late final Stream<IList<Activity>> _stream;

  @override
  void initState() {
    super.initState();

    _stream = sl<PendingActivitiesRepository>().watchAll();
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<IList<Activity>>(
        stream: _stream,
        builder: (context, snapshot) {
          final data = snapshot.data;

          if (data == null || data.isEmpty) {
            return const Center(child: NoActivity());
          }

          final hasKyc = data.first is KycActivity;
          final pendingActivities =
              hasKyc ? data.skip(1).toList() : data.toList();

          return CustomScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: [
              const SliverPadding(padding: EdgeInsets.only(top: _topPadding)),
              if (hasKyc) ...[
                SliverPadding(
                  padding: widget.padding ?? EdgeInsets.zero,
                  sliver: SliverToBoxAdapter(
                    child: KycTile(
                      key: ValueKey(data.first.created),
                      timestamp: context.formatDate(data.first.created),
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.only(top: 16)),
              ],
              if (pendingActivities.isNotEmpty)
                SliverPadding(
                  padding: widget.padding ?? EdgeInsets.zero,
                  sliver: DecoratedSliver(
                    decoration: const BoxDecoration(
                      color: CpColors.blackGreyColor,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    sliver: SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      sliver: SliverList.builder(
                        itemCount: pendingActivities.length,
                        itemBuilder: (context, index) {
                          final item = pendingActivities[index];

                          return item.map(
                            outgoingPaymentRequest: (p) => PaymentRequestTile(
                              key: ValueKey(p.id),
                              id: p.id,
                            ),
                            outgoingDirectPayment: (p) => ODPTile(
                              key: ValueKey(p.id),
                              activity: p,
                            ),
                            outgoingLinkPayment: (p) => OLPTile(
                              key: ValueKey(p.id),
                              activity: p,
                            ),
                            onRamp: (it) => OnRampTile(
                              key: ValueKey(it.id),
                              activity: it,
                            ),
                            offRamp: (it) => OffRampTile(
                              key: ValueKey(it.id),
                              activity: it,
                            ),
                            outgoingDlnPayment: (it) => OutgoingDlnTile(
                              key: ValueKey(it.id),
                              activity: it,
                            ),
                            transactionRequest: (it) => TrTile(
                              key: ValueKey(it.id),
                              activity: it,
                            ),
                            kyc: (it) => const SizedBox.shrink(),
                            swap: (it) => SwapTile(
                              key: ValueKey(it.id),
                              activity: it,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      );
}

const double _topPadding = 30;
