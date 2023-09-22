import 'dart:async';

import 'package:flutter/material.dart';

class FadeScaleTransition extends StatefulWidget {
  const FadeScaleTransition({
    super.key,
    required this.onTap,
    required this.child,
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  State<FadeScaleTransition> createState() => _FadeScaleTransitionState();
}

class _FadeScaleTransitionState extends State<FadeScaleTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
    );
    _animationController.value = 1;
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void animateForward() {
    _animationController.animateTo(
      0.7,
      duration: const Duration(milliseconds: 200),
    );
  }

  Future<void> animateBackward() async {
    unawaited(_animationController.animateTo(
      1,
      duration: const Duration(milliseconds: 300),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => animateForward(),
      onTapUp: (details) =>
      animateBackward()..whenComplete(() => widget.onTap?.call()),
      onTapCancel: animateBackward,
      child: ScaleTransition(
        scale: _animation,
        child: FadeTransition(
          opacity: _animation,
          child: MouseRegion(child: widget.child),
        ),
      ),
    );
  }
}
