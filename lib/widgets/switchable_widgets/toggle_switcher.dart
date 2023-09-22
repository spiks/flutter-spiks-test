import 'dart:developer';

import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsSwitcher extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> valueChanged;

  const NotificationsSwitcher({
    super.key,
    required this.value,
    required this.valueChanged,
  });

  @override
  Widget build(BuildContext context) {
    final ColorTween backgroundColor = ColorTween(
      begin: value ? context.scheme.tertiaryContainer : context.scheme.primary,
      end: value ? context.scheme.primary : context.scheme.tertiaryContainer,
    );

    return GestureDetector(
      onTap: () => valueChanged(
        !value,
      ),
      child: TweenAnimationBuilder<Color?>(
        tween: backgroundColor,
        duration: const Duration(milliseconds: 200),
        builder: (BuildContext context, Color? color, Widget? child) =>
            Container(
          height: 24,
          width: 48,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: context.scheme.background),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: AnimatedAlign(
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            duration: const Duration(milliseconds: 200),
            child: _Thumb(),
          ),
        ),
      ),
    );
  }
}

class _Thumb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        log(details.localPosition.toString(), name: 'toggle switcher');
      },
      child: Container(
        width: 24,
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: context.scheme.background,
          boxShadow: [
            BoxShadow(
              color: context.scheme.tertiary.withOpacity(.2),
              offset: const Offset(0, 2),
              blurRadius: 4,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
