import 'package:flutter/material.dart';

class GradientMask extends StatelessWidget {
  const GradientMask({
    this.enabled = true,
    required this.child,
    required this.gradient,
    this.opacity = 1,
  });

  final Widget child;
  final Gradient gradient;
  final bool enabled;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => enabled
          ? LinearGradient(
                  colors: gradient.colors
                      .map((e) =>
                  e.withOpacity(opacity),)
                      .toList(),)
              .createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            )
          : LinearGradient(
              colors: [
                Theme.of(context).disabledColor,
                Theme.of(context).disabledColor,
              ],
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
      child: child,
    );
  }
}
