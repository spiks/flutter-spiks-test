import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({
    super.key,
    this.dotCount = 4,
    this.duration = const Duration(milliseconds: 400),
    this.dotSize = 16,
  });

  final int dotCount;
  final double dotSize;
  final Duration duration;

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  final List<Duration> delayDurations = [];

  @override
  void initState() {
    for (int i = 0; i < widget.dotCount; i++) {
      delayDurations.add(
        Duration(
          milliseconds: (widget.duration.inMilliseconds ~/ (widget.dotCount)) *
              (widget.dotCount - i),
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        widget.dotCount,
        (index) => _LoadingDot(
          size: widget.dotSize,
          duration: widget.duration,
          delayDuration: delayDurations[index],
        ),
      ),
    );
  }
}

class _LoadingDot extends StatefulWidget {
  const _LoadingDot({
    required this.size,
    required this.duration,
    required this.delayDuration,
  });

  final double size;
  final Duration duration;
  final Duration delayDuration;

  @override
  State<_LoadingDot> createState() => _LoadingDotState();
}

class _LoadingDotState extends State<_LoadingDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: widget.duration,
    vsync: this,
  )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(widget.delayDuration, () {
          _controller.repeat(reverse: true);
        });
      }
    });

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 2),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.scheme.primary,
        ),
      ),
    );
  }
}
