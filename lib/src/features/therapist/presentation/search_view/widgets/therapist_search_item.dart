import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/buttons/ink_well_m3.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/shared_widgets.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/navigation/auto_router.dart';
import 'package:flutter_spiks_test/src/values/values.dart';

class TherapistSearchItem extends StatelessWidget {
  final Therapist therapist;

  const TherapistSearchItem({super.key, required this.therapist});

  @override
  Widget build(BuildContext context) {
    return InkWellM3(
      onTap: () => context.router.push(
        TherapistDetailsRoute(
          id: therapist.id,
        ),
      ),
      child: Row(
        children: [
          RoundedAvatar(
            therapist.avatar,
            size: 40,
          ),
          const Gap(16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        '${therapist.surname} ${therapist.name}',
                        style: context.textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Gap(8),
                    WorkExperienceWidget(
                      experience: therapist.experience,
                      iconVisible: false,
                    ),
                  ],
                ),
                const Gap(4),
                Text(
                  // todo: с бэка нужны специализации терапевта для поиска
                  'Перинатальный психолог, гештальт терапевт',
                  style: context.textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
