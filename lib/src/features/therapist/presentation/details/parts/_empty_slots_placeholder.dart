import 'package:flutter/cupertino.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/widgets/color_wrapper.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/solid_icons.dart';

import '../../../../../core/core.dart';

class EmptySlotsPlaceholder extends StatelessWidget {
  const EmptySlotsPlaceholder();

  @override
  Widget build(BuildContext context) {
    return ColorWrapper(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      child: Row(
        children: [
          Icon(
            SolidIcons.clock_badge,
            color: context.scheme.tertiary,
            size: 30,
          ),
          const Gap(8),
          Expanded(
            child: Text(
              L10n.of(context).empty_slots_on_detail,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.scheme.tertiary),
            ),
          ),
        ],
      ),
    );
  }
}
