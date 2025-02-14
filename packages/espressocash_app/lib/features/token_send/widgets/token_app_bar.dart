import 'dart:math';

import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../ui/back_button.dart';
import '../../../ui/colors.dart';
import '../../tokens/token.dart';
import '../../tokens/widgets/token_icon.dart';

class TokenAppBar extends StatelessWidget {
  const TokenAppBar({
    super.key,
    required this.token,
    this.color = CpColors.darkSandColor,
    this.displayText = true,
  });

  final Token token;
  final Color color;
  final bool displayText;

  @override
  Widget build(BuildContext context) => SliverPersistentHeader(
        pinned: true,
        delegate: _TokenAppBarDelegate(token, color, displayText: displayText),
      );
}

class _TokenAppBarDelegate extends SliverPersistentHeaderDelegate {
  const _TokenAppBarDelegate(
    this.token,
    this.color, {
    required this.displayText,
  });

  final Token token;
  final Color color;
  final bool displayText;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    /// Scroll ratio, should vary between [0,1] from expanded to collapsed.
    final ratio = (shrinkOffset / maxExtent)
        .let(Curves.ease.transform)
        .let((it) => 1 - it);
    final iconSize = max(_tokenSize * ratio, 24.0);

    return Material(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            _buildIcon(ratio, iconSize),
            if (displayText) _buildText(ratio, iconSize),
            const _BackButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(double ratio, double iconSize) => Positioned(
        top: (iconSize * ratio) - iconSize + 8,
        left: 0,
        right: 0,
        child: Opacity(
          opacity: ratio,
          child: TokenIcon(token: token, size: iconSize),
        ),
      );

  Widget _buildText(double ratio, double iconSize) => Positioned.fill(
        top: iconSize * (ratio * 1.15) + 4,
        left: _buttonSize,
        right: _buttonSize,
        child: Center(
          child: FittedBox(
            child: Text(
              '${token.name} (${token.symbol})',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),
            ),
          ),
        ),
      );

  @override
  double get maxExtent => _tokenSize + (_minExtent - 20);

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant _TokenAppBarDelegate oldDelegate) =>
      oldDelegate.token != token;

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration =>
      FloatingHeaderSnapConfiguration(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
      );
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) => const Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: _minExtent,
          child: CpBackButton(),
        ),
      );
}

const double _tokenSize = 68;
const double _buttonSize = 48;
const double _minExtent = kToolbarHeight;
