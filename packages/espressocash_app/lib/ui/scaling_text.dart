import 'package:flutter/material.dart';

class ScalingText extends StatelessWidget {
  const ScalingText({
    super.key,
    required this.text,
    required this.style,
    this.minTextScaleFactor = 0.5,
  });

  final String text;
  final TextStyle style;
  final double minTextScaleFactor;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          final fontSize = style.fontSize ?? 34;
          final span = TextSpan(text: text, style: style);
          final tp = TextPainter(
            text: span,
            textDirection: TextDirection.ltr,
            maxLines: 1,
          )..layout();

          final textWidth = tp.width;
          final containerWidth = constraints.maxWidth;
          final textScaleFactor = containerWidth / textWidth;

          return textScaleFactor >= minTextScaleFactor
              ? FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(text, style: style),
                )
              : Text(
                  text,
                  style:
                      style.copyWith(fontSize: fontSize * minTextScaleFactor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                );
        },
      );
}
