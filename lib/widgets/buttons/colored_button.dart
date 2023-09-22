import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String titleText;

  /// default: scheme.primary
  final Color? titleColor;

  /// default: scheme.background
  final Color? buttonColor;

  final IconData? icon;

  final double borderRadius;

  const ColoredButton({
    super.key,
    this.onPressed,
    required this.titleText,
    this.titleColor,
    this.buttonColor,
    this.icon,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 16),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        onPressed: onPressed,
        color: buttonColor ?? context.scheme.primary,
        disabledColor: context.scheme.primaryContainer,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleText,
              /// primary textTheme is onPrimary color
              style: context.primaryTextTheme.labelLarge?.copyWith(
                /// if it's null no changes will be applied
                color: titleColor,
              ),
            ),
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  icon,
                  color: titleColor,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsNode.message('titleText: $titleText'));
    properties.add(DiagnosticsNode.message('titleColor $titleColor'));
    properties.add(DiagnosticsNode.message('buttonColor $buttonColor'));
    properties.add(DiagnosticsNode.message('icon $icon'));
  }
}
