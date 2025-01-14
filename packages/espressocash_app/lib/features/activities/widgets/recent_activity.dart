import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart' hide Notification;

import '../../../di.dart';
import '../../../l10n/l10n.dart';
import '../../../ui/button.dart';
import '../../../ui/colors.dart';
import '../../../ui/home_tile.dart';
import '../../../ui/theme.dart';
import '../data/transaction_repository.dart';
import 'transaction_item.dart';

class RecentActivityWidget extends StatefulWidget {
  const RecentActivityWidget({
    super.key,
    required this.onSendMoneyPressed,
    required this.onTransactionsPressed,
  });

  final VoidCallback onSendMoneyPressed;
  final VoidCallback onTransactionsPressed;

  @override
  State<RecentActivityWidget> createState() => _RecentActivityWidgetState();
}

class _RecentActivityWidgetState extends State<RecentActivityWidget> {
  final int _activityCount = 3;

  late final Stream<IList<String>> _txs;

  @override
  void initState() {
    super.initState();
    _txs = sl<TransactionRepository>().watchCount(_activityCount);
  }

  @override
  Widget build(BuildContext context) => StreamBuilder<IList<String>>(
        stream: _txs,
        builder: (context, snapshot) {
          final data = snapshot.data;

          if (data == null) return const SizedBox.shrink();

          return HomeTile(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    context.l10n.recentActivityLbl,
                    style: dashboardSectionTitleTextStyle,
                  ),
                ),
                const SizedBox(height: 16),
                if (data.isEmpty)
                  Center(
                    child: _NoActivity(
                      onSendMoneyPressed: widget.onSendMoneyPressed,
                    ),
                  )
                else ...[
                  _Card(
                    child: Column(
                      children: data
                          .map(
                            (e) => _KeepAlive(
                              key: ValueKey(e),
                              child: CpTheme.black(
                                child: TransactionItem(tx: e, showIcon: false),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // TODO(KB): Check if needed
                  // ignore: avoid-single-child-column-or-row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CpButton(
                        text: context.l10n.recentActivitySeeAll,
                        size: CpButtonSize.micro,
                        variant: CpButtonVariant.dark,
                        onPressed: widget.onTransactionsPressed,
                      ),
                    ],
                  ),
                ],
              ],
            ),
          );
        },
      );
}

class _NoActivity extends StatelessWidget {
  const _NoActivity({required this.onSendMoneyPressed});

  final VoidCallback onSendMoneyPressed;

  @override
  Widget build(BuildContext context) => _Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                context.l10n.recentActivityEmpty,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              CpButton(
                minWidth: 120,
                size: CpButtonSize.wide,
                text: context.l10n.yes,
                onPressed: onSendMoneyPressed,
              ),
            ],
          ),
        ),
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

class _KeepAlive extends StatefulWidget {
  const _KeepAlive({
    required Key key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<_KeepAlive> createState() => _KeepAliveState();
}

class _KeepAliveState extends State<_KeepAlive>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }
}
