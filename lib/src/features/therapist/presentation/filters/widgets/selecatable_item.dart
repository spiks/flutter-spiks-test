import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/wrappers/fade_scale_transition.dart';
import 'package:flutter_spiks_test/src/src.dart';

class SelectableItem extends StatelessWidget {
  final Widget? label;
  final String? title;
  final bool selected;
  final ValueChanged<bool>? onTap;
  final SelectableItemStyle selectableItemStyle;
  final double borderRadius;
  final Color? fillSelectedColor;
  final Color? fillColor;
  final TextStyle? selectedStyle;
  final TextStyle? textStyle;
  final Color? borderColor;

  const SelectableItem({
    super.key,
    this.label,
    required this.selected,
    this.onTap,
    this.title,
    this.selectableItemStyle = SelectableItemStyle.filled,
    this.borderRadius = 24,
    this.fillColor,
    this.fillSelectedColor,
    this.textStyle,
    this.selectedStyle,
    this.borderColor,
  })  : assert(
          label != null || title != null,
          'At least one of the parameters != null',
        ),
        assert(
          label == null || title == null,
          'Both of the parameters != null',
        );

  @override
  Widget build(BuildContext context) {
    final TextStyle? style = (selectedStyle != null && textStyle != null)
        ? selected
            ? selectedStyle
            : textStyle
        : context.textTheme.labelMedium?.copyWith(
            color: selectableItemStyle == SelectableItemStyle.filled
                ? selected
                    ? context.scheme.background
                    : context.scheme.inverseSurface
                : selected
                    ? context.scheme.primary
                    : context.scheme.inverseSurface,
          );

    final Color fillColor =
        (this.fillColor != null && fillSelectedColor != null)
            ? selected
                ? fillSelectedColor!
                : this.fillColor!
            : selectableItemStyle == SelectableItemStyle.filled
                ? selected
                    ? context.scheme.primary
                    : context.scheme.primaryContainer.withOpacity(.3)
                : context.scheme.background;

    final Color borderColor = this.borderColor ??
        (selectableItemStyle == SelectableItemStyle.outlined
            ? selected
                ? context.scheme.primary
                : context.scheme.tertiaryContainer
            : context.scheme.background);

    return FadeScaleTransition(
      onTap: () => onTap?.call(selected),
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: fillColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        duration: const Duration(milliseconds: 350),
        child: Center(
          child: label ??
              Text(
                title!,
                style: style,
              ),
        ),
      ),
    );
  }
}

enum SelectableItemStyle { filled, outlined }
