import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../di.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/colors.dart';
import '../../../ui/home_tile.dart';
import '../../../ui/theme.dart';
import '../data/transaction_repository.dart';
import '../models/transaction.dart';
import 'common_tile.dart';
import 'odp_tile.dart';
import 'off_ramp_tile.dart';
import 'olp_tile.dart';
import 'on_ramp_tile.dart';
import 'outgoing_dln_tile.dart';
import 'payment_request_tile.dart';
import 'tr_tile.dart';

class RecentTokenActivityWidget extends StatefulWidget {
  const RecentTokenActivityWidget({
    super.key,
    required this.tokenAddress,
  });

  final String tokenAddress;

  @override
  State<RecentTokenActivityWidget> createState() =>
      _RecentTokenActivityWidgetState();
}

class _RecentTokenActivityWidgetState extends State<RecentTokenActivityWidget> {
  late final Stream<Map<String, IList<TxCommon>>> _groupedTxs;

  @override
  void initState() {
    super.initState();
    _groupedTxs =
        sl<TransactionRepository>().watchGroupedByDate(widget.tokenAddress);
  }

  String _formatDate(String date) {
    final parsedDate = DateTime.parse(date);
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));

    return (parsedDate.year == now.year &&
            parsedDate.month == now.month &&
            parsedDate.day == now.day)
        ? context.l10n.today
        : (parsedDate.year == yesterday.year &&
                parsedDate.month == yesterday.month &&
                parsedDate.day == yesterday.day)
            ? context.l10n.yesterday
            : DateFormat('MMM d, yyyy').format(parsedDate);
  }

  @override
  Widget build(BuildContext context) =>
      StreamBuilder<Map<String, IList<TxCommon>>>(
        stream: _groupedTxs,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (data == null || data.isEmpty) {
            return const Center(child: _NoActivity());
          }

          final sortedDates = data.keys.toList()
            ..sort((a, b) => b.compareTo(a));

          return HomeTile(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 16),
                ...sortedDates.map((date) {
                  final transactions = data[date];
                  late final IList<TxCommon> sortedTxs;

                  if (transactions != null) {
                    sortedTxs = transactions.sort((a, b) {
                      final aCreated = a.created;
                      final bCreated = b.created;

                      return (aCreated != null && bCreated != null)
                          ? bCreated.compareTo(aCreated)
                          : 0;
                    });
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, bottom: 9.0),
                        child: Text(
                          _formatDate(date),
                          style: dashboardSectionTitleTextStyle,
                        ),
                      ),
                      _Card(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: sortedTxs.length * 60,
                            minWidth: MediaQuery.sizeOf(context).width,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: sortedTxs
                                .map(
                                  (tx) => tx.map(
                                    common: (t) => CommonTile(
                                      key: ValueKey(t.tx.id),
                                      txCommon: t,
                                      showIcon: false,
                                    ),
                                    activity: (txActivity) =>
                                        txActivity.activity.map(
                                      outgoingPaymentRequest: (p) =>
                                          PaymentRequestTile(
                                        key: ValueKey(p.id),
                                        id: p.id,
                                        showIcon: false,
                                      ),
                                      outgoingDirectPayment: (p) => ODPTile(
                                        key: ValueKey(p.id),
                                        activity: p,
                                        showIcon: false,
                                      ),
                                      outgoingLinkPayment: (p) => OLPTile(
                                        key: ValueKey(p.id),
                                        activity: p,
                                        showIcon: false,
                                      ),
                                      onRamp: (it) => OnRampTile(
                                        key: ValueKey(it.id),
                                        activity: it,
                                        showIcon: false,
                                      ),
                                      offRamp: (it) => OffRampTile(
                                        key: ValueKey(it.id),
                                        activity: it,
                                        showIcon: false,
                                      ),
                                      outgoingDlnPayment: (it) =>
                                          OutgoingDlnTile(
                                        key: ValueKey(it.id),
                                        activity: it,
                                        showIcon: false,
                                      ),
                                      transactionRequest: (it) => TrTile(
                                        key: ValueKey(it.id),
                                        activity: it,
                                        showIcon: false,
                                      ),
                                      kyc: (it) => const SizedBox.shrink(),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  );
                }),
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      );
}

class _Card extends StatelessWidget {
  const _Card({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: const ShapeDecoration(
          color: CpColors.blackGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
        ),
        child: child,
      );
}

class _NoActivity extends StatelessWidget {
  const _NoActivity();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 72.0),
        child: Text(
          context.l10n.noRecentActivity,
          style: const TextStyle(
            color: Color(0xFF484848),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
