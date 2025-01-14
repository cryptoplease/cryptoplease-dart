import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import '../../../ui/colors.dart';

enum CpActivityTileStatus { inProgress, success, failure, canceled }

class CpActivityTile extends StatelessWidget {
  const CpActivityTile({
    super.key,
    required this.title,
    required this.icon,
    required this.status,
    required this.timestamp,
    this.subtitle,
    this.incomingAmount,
    this.outgoingAmount,
    this.onTap,
    this.showIcon = true,
  });

  final String title;
  final Widget icon;
  final String timestamp;
  final CpActivityTileStatus status;
  final String? subtitle;
  final String? incomingAmount;
  final String? outgoingAmount;
  final VoidCallback? onTap;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    final incomingAmount = this.incomingAmount;
    final outgoingAmount = this.outgoingAmount;

    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      leading: showIcon
          ? SizedBox.square(
              dimension: 42,
              child: icon,
            )
          : null,
      title: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: _titleStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (incomingAmount != null)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('+$incomingAmount', style: _inAmountStyle),
            ),
          if (outgoingAmount != null)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('-$outgoingAmount', style: _titleStyle),
            ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(status.text(context), style: _subtitleStyle),
          Text(timestamp, style: _subtitleStyle),
        ],
      ),
    );
  }
}

const _titleStyle = TextStyle(
  fontSize: 16,
  letterSpacing: .23,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

const _inAmountStyle = TextStyle(
  fontSize: 16,
  letterSpacing: .23,
  color: CpColors.greenColor,
  fontWeight: FontWeight.w500,
);

const _subtitleStyle = TextStyle(
  fontSize: 14,
  color: Colors.white,
  letterSpacing: .19,
);

extension on CpActivityTileStatus {
  String text(BuildContext context) {
    switch (this) {
      case CpActivityTileStatus.inProgress:
        return context.l10n.activities_lblInProgress;
      case CpActivityTileStatus.success:
        return context.l10n.activities_lblSuccess;
      case CpActivityTileStatus.failure:
        return context.l10n.activities_lblFailure;
      case CpActivityTileStatus.canceled:
        return context.l10n.activities_lblCanceled;
    }
  }
}
