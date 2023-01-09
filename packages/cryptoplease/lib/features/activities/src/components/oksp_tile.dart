import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/format_amount.dart';
import '../../../../core/presentation/format_date.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../l10n/device_locale.dart';
import '../../../../routes.gr.dart';
import '../activity.dart';
import 'styles.dart';

class OSKPTile extends StatelessWidget {
  const OSKPTile({super.key, required this.activity});

  final OSKPActivity activity;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Row(
          children: [
            Expanded(
              child: Text(
                activity.data.status.maybeMap(
                  orElse: () => 'Sent via link',
                  canceled: (_) => 'Transfer canceled',
                ),
                style: titleStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            activity.data.status.maybeMap(
              orElse: () => Text(
                '-${activity.data.amount.format(DeviceLocale.localeOf(context))}',
                style: titleStyle,
              ),
              canceled: (_) => const SizedBox.shrink(),
            ),
          ],
        ),
        subtitle: Text(
          context.formatDate(activity.created),
          style: subtitleStyle,
        ),
        leading: Assets.icons.outgoing.svg(),
        onTap: () => context.router.navigate(OSKPRoute(id: activity.id)),
      );
}
