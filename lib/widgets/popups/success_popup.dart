import 'dart:ui';

import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSuccessPopup(BuildContext context) => Future.delayed(
    const Duration(milliseconds: 300),
    () => showCupertinoDialog(
          context: context,
          builder: (_) => _SuccessPopup(),
          barrierDismissible: false,
        ));

class _SuccessPopup extends StatefulWidget {
  @override
  State<_SuccessPopup> createState() => _SuccessPopupState();
}

class _SuccessPopupState extends State<_SuccessPopup>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..forward().whenComplete(
        () => Future.delayed(
          const Duration(milliseconds: 300),
          () => Navigator.of(context).pop(),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: context.scheme.tertiaryContainer,
        ),
        child: CustomPaint(
          painter: _SuccessIconPainter(
              animation:_controller,
              color:context.scheme.primary,
              strokeWidth: 8,
          ),
        ),
      ),
    );
  }
}

class _SuccessIconPainter extends CustomPainter {
  final Animation<double> animation;

  final Color color;

  final double? strokeWidth;

  _SuccessIconPainter({required this.animation, required this.color, required this.strokeWidth})
      : super(repaint: animation);

  Path _createAnyPath(Size size) {
    return Path()
      ..moveTo(0.27083 * size.width, 0.54167 * size.height)
      ..lineTo(0.41667 * size.width, 0.68750 * size.height)
      ..lineTo(0.75000 * size.width, 0.35417 * size.height);
  }

  Path createAnimatedPath(Path originalPath, double animationPercent) {
    final totalLength = originalPath
        .computeMetrics()
        .fold(0.0, (double prev, PathMetric metric) => prev + metric.length);

    final currentLength = totalLength * animationPercent;

    return extractPathUntilLength(originalPath, currentLength);
  }

  Path extractPathUntilLength(Path originalPath, double length) {
    var currentLength = 0.0;

    final path = Path();

    final metricsIterator = originalPath.computeMetrics().iterator;

    while (metricsIterator.moveNext()) {
      final metric = metricsIterator.current;

      final nextLength = currentLength + metric.length;

      final isLastSegment = nextLength > length;
      if (isLastSegment) {
        final remainingLength = length - currentLength;
        final pathSegment = metric.extractPath(0.0, remainingLength);

        path.addPath(pathSegment, Offset.zero);
        break;
      } else {
        final pathSegment = metric.extractPath(0.0, metric.length);
        path.addPath(pathSegment, Offset.zero);
      }

      currentLength = nextLength;
    }

    return path;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final animationPercent = animation.value;

    final path = createAnimatedPath(_createAnyPath(size), animationPercent);

    final Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = strokeWidth ?? size.width * 0.06;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
