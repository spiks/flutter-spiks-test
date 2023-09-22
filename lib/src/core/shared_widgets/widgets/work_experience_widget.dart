import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/solid_icons.dart';

class WorkExperienceWidget extends StatelessWidget {
  final int experience;
  final bool iconVisible;

  /// default GradientResources.primary1
  final LinearGradient? gradient;

  /// default context.scheme.primary
  final Color? color;

  /// default context.textTheme.bodySmall
  final TextStyle? textStyle;
  final double iconSize;

  const WorkExperienceWidget({
    super.key,
    required this.experience,
    this.iconVisible = true,
    this.gradient,
    this.color,
    this.textStyle,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (iconVisible)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GradientMask(
              gradient: gradient ?? const LinearGradient(colors: [Colors.transparent,],),
              child: Icon(
                SolidIcons.case_icon,
                color: color ?? context.scheme.primary,
                size: iconSize,
              ),
            ),
          ),
        Text(
          Intl.plural(
            experience,
            zero: L10n.of(context).experienceZero,
            one:
                '${L10n.of(context).work_experience} - $experience ${L10n.of(context).experienceOne}',
            few:
                '${L10n.of(context).work_experience} - $experience ${L10n.of(context).experienceFew}',
            other:
                '${L10n.of(context).work_experience} - $experience ${L10n.of(context).experienceOther}',
          ),
          style: textStyle ?? context.textTheme.bodySmall,
        ),
      ],
    );
  }
}
