import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/material.dart';

import '../painters/checkbox_painter.dart';

class CustomCheckbox extends StatefulWidget {
  final double size;
  final bool value;
  final ValueChanged<bool> onValueChanged;

  const CustomCheckbox(
      {super.key,
        this.size = 24,
        required this.value,
        required this.onValueChanged});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox>
    with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    if (widget.value) {
      animation.value = 1;
    }
  }

  @override
  void didUpdateWidget(covariant CustomCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      animation.animateTo(widget.value ? 1 : 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onValueChanged(!widget.value),
      child: AnimatedBuilder(
        animation: animation,
        builder: (_, child) => SizedBox.square(
          dimension: widget.size,
          child: Container(
            decoration: BoxDecoration(
              color: ColorTween(
                begin: context.scheme.primary.withOpacity(0),
                end: context.scheme.primary,
              ).evaluate(animation) ??
                  context.scheme.tertiary,
              shape: BoxShape.circle,
              border: Border.all(
                  color: ColorTween(
                    begin: context.scheme.tertiary.withOpacity(0.4),
                    end: context.scheme.primary,
                  ).evaluate(animation)!),
            ),
            child: CustomPaint(
              painter: CheckboxPainter(
                animation: animation,
                color: context.scheme.background,
              ),
            ),
          ),
        ),
      ),
    );
  }
}