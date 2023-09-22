import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/material.dart';

class ColoredOutlinedButton extends StatelessWidget {
  final String titleText;
  final Color? color;
  final VoidCallback onPressed;

  const ColoredOutlinedButton({
    super.key,
    required this.titleText,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.transparent,
          foregroundColor: color ?? context.scheme.primary,
          side: BorderSide(
            color: color ?? context.scheme.primary,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          titleText,
          style: context.textTheme.labelLarge?.copyWith(
            color: color ?? context.scheme.primary,
          ),
        ),
      ),
    );
  }
}
