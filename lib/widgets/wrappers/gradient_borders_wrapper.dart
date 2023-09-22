import 'dart:math';

import 'package:flutter/widgets.dart';

class GradientBordersWrapper extends StatelessWidget {
  final Widget child;
  final double borderSize;
  final bool begin;
  final bool end;
  final Axis axis;
  final Color color;

  const GradientBordersWrapper({
    super.key,
    required this.child,
    this.borderSize = 16,
    this.begin = true,
    this.end = true,
    this.axis = Axis.horizontal,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final beginAlign =
        axis == Axis.horizontal ? Alignment.centerLeft : Alignment.topCenter;
    final endAlign = axis == Axis.horizontal
        ? Alignment.centerRight
        : Alignment.bottomCenter;

    final width = axis == Axis.horizontal ? borderSize : null;
    final height = axis == Axis.horizontal ? null : borderSize;
    return Stack(
      children: [
        child,
        if (begin)
          Align(
            alignment: beginAlign,
            child: _GradientContainer(
              begin: beginAlign,
              end: endAlign,
              color: color,
              width: width,
              height: height,
            ),
          ),
        if (end)
          Align(
            alignment: endAlign,
            child: Transform.rotate(
              angle: -pi,
              child: _GradientContainer(
                begin: beginAlign,
                end: endAlign,
                color: color,
                width: width,
                height: height,
              ),
            ),
          ),
      ],
    );
  }
}

class _GradientContainer extends StatelessWidget {
  final Color color;
  final double? width;
  final double? height;
  final Alignment begin;
  final Alignment end;

  const _GradientContainer({
    required this.color,
    this.width,
    this.height,
    required this.begin,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            color.withOpacity(0),
          ],
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
