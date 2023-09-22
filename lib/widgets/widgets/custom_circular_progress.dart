import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';

class CustomCircularProgress extends StatefulWidget {
  const CustomCircularProgress({
    super.key,
    this.color,
    this.backgroundColor,
    this.dimension = 48,
    this.borderWidth = 8,
    this.duration = const Duration(seconds: 2),
  });

  final Color? color;
  final Color? backgroundColor;
  final double dimension;
  final double borderWidth;
  final Duration duration;

  @override
  State<CustomCircularProgress> createState() => _CustomCircularProgressState();
}

class _CustomCircularProgressState extends State<CustomCircularProgress>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(widget.dimension, widget.dimension),
      painter: _CircularProgressIndicator(
        animation: controller,
        color: widget.color ?? context.scheme.primary,
        backgroundColor:
            widget.backgroundColor ?? context.scheme.tertiaryContainer,
        borderWidth: widget.borderWidth,
      ),
    );
  }
}

class _CircularProgressIndicator extends CustomPainter {
  final Animation<double> animation;
  final Color color;
  final Color backgroundColor;
  final double borderWidth;

  const _CircularProgressIndicator({
    required this.animation,
    required this.color,
    required this.backgroundColor,
    required this.borderWidth,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final value = 1 - animation.value;

    final double startAngle =
        value > 0.5 ? (math.pi * 4) * value : (value - 0.5) * (math.pi * 4);

    final double sweepAngle = math.pi + value <= 0.5
        ? (math.pi * 4) * value
        : (value - 0.5) * (math.pi * 4);

    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Offset.zero & size,
      0,
      (math.pi * 2) - 0.001,
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Offset.zero & size,
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _CircularProgressIndicator oldDelegate) {
    return true;
  }
}
