import 'dart:io';

import 'package:flutter/cupertino.dart';

class ModalScrollPhysics extends ScrollPhysics {
  const ModalScrollPhysics({super.parent});

  @override
  ModalScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return ModalScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (value < position.pixels &&
        position.pixels <= position.minScrollExtent) {
      return value - position.pixels;
    }
    if (position.maxScrollExtent <= position.pixels &&
        position.pixels < value) {
      return Platform.isIOS ? 0 : value - position.pixels;
    }
    if (value < position.minScrollExtent &&
        position.minScrollExtent < position.pixels) {
      return value - position.minScrollExtent;
    }
    if (position.pixels < position.maxScrollExtent &&
        position.maxScrollExtent < value) {
      return Platform.isIOS ? 0 : value - position.maxScrollExtent;
    }
    return 0.0;
  }
}
