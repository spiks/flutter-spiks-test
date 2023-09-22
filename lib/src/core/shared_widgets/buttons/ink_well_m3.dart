import 'package:flutter/material.dart';
import 'package:flutter_spiks_te/src/src.dart';

/// inkwell styled for material3
/// (with small margins around and with rounded border)
class InkWellM3 extends StatelessWidget {
  final Color? splashColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final VoidCallback? onTap;
  final BorderRadius borderRadius;
  final Widget child;

  const InkWellM3({
    required this.child,
    this.onTap,
    super.key,
    this.splashColor,
    this.padding = const EdgeInsets.all(24),
    this.margin = const EdgeInsets.all(4),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkWell(
        borderRadius: borderRadius,
        highlightColor: context.scheme.primary.withOpacity(.2),
        // highlightColor: Colors.red,
        onTap: onTap,
        splashColor: splashColor,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
