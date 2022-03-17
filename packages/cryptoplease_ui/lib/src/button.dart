import 'package:cryptoplease_ui/src/colors.dart';
import 'package:flutter/material.dart';

enum CpButtonVariant {
  secondary,
  dark,
  light,
  inverted,
}

enum CpButtonSize { normal, big, small, micro }

class CpButton extends StatelessWidget {
  const CpButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.width,
    this.variant = CpButtonVariant.dark,
    this.minWidth,
    this.size = CpButtonSize.normal,
  }) : super(key: key);

  final String text;
  final double? width;
  final VoidCallback? onPressed;
  final CpButtonVariant variant;
  final double? minWidth;
  final CpButtonSize size;

  bool get _isDisabled => onPressed == null;

  Color get _backgroundColor {
    final color = (() {
      switch (variant) {
        case CpButtonVariant.dark:
          return CpColors.yellowColor;
        case CpButtonVariant.inverted:
          return CpColors.primaryTextColor;
        case CpButtonVariant.light:
          return CpColors.lightButtonBackgroundColor;
        case CpButtonVariant.secondary:
          return CpColors.lightGreyBackground;
      }
    })();

    return _isDisabled ? color.withOpacity(0.25) : color;
  }

  Color get _foregroundColor {
    final color = (() {
      switch (variant) {
        case CpButtonVariant.inverted:
          return CpColors.lightGreyBackground;
        default:
          return CpColors.primaryTextColor;
      }
    })();

    return _isDisabled ? color.withOpacity(0.25) : color;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = (() {
      final style = Theme.of(context)
          .textTheme
          .button!
          .copyWith(overflow: TextOverflow.ellipsis);
      switch (size) {
        case CpButtonSize.normal:
          return style;
        case CpButtonSize.big:
          return style.copyWith(fontSize: 18);
        case CpButtonSize.small:
          return style.copyWith(fontSize: 17, height: 1);
        case CpButtonSize.micro:
          return style.copyWith(fontSize: 15, height: 1);
      }
    })();

    final double horizontalPadding = size == CpButtonSize.micro ? 8 : 16;

    final button = TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize:
            MaterialStateProperty.all(Size(minWidth ?? 100, size.height)),
        fixedSize: MaterialStateProperty.all(
          Size.fromHeight(size.height),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size.borderRadius),
          ),
        ),
        alignment: size.alignment,
        overlayColor:
            MaterialStateProperty.all(CpColors.translucentYellowColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: horizontalPadding),
        ),
        backgroundColor: MaterialStateProperty.all(_backgroundColor),
        foregroundColor: MaterialStateProperty.all(_foregroundColor),
        textStyle: MaterialStateProperty.all(textStyle),
      ),
      child: Text(size.uppercase ? text.toUpperCase() : text),
    );

    return width != null ? SizedBox(width: width, child: button) : button;
  }
}

extension on CpButtonSize {
  double get height {
    switch (this) {
      case CpButtonSize.normal:
        return 44;
      case CpButtonSize.big:
        return 60;
      case CpButtonSize.small:
        return 44;
      case CpButtonSize.micro:
        return 30;
    }
  }

  bool get uppercase {
    switch (this) {
      case CpButtonSize.normal:
        return true;
      default:
        return false;
    }
  }

  double get borderRadius {
    switch (this) {
      case CpButtonSize.normal:
        return 22;
      case CpButtonSize.big:
        return 30;
      case CpButtonSize.small:
        return 22;
      case CpButtonSize.micro:
        return 22;
    }
  }

  Alignment get alignment {
    switch (this) {
      case CpButtonSize.normal:
        return Alignment.center;
      case CpButtonSize.big:
        return Alignment.centerLeft;
      case CpButtonSize.small:
        return Alignment.center;
      case CpButtonSize.micro:
        return Alignment.center;
    }
  }
}
