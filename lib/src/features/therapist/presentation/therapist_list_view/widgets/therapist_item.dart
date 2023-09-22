import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/shared_widgets.dart';
import 'package:flutter_spiks_test/src/features/discount/discount.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/helpers/therapist_presentation_helpers.dart';
import 'package:flutter_spiks_test/src/navigation/navigation.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';

class TherapistListItem extends StatelessWidget {
  final Therapist therapist;
  final int? discount;

  const TherapistListItem({super.key, required this.therapist, this.discount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.router.push(
          TherapistDetailsRoute(id: therapist.id),
        ),
        highlightColor: context.scheme.primary.withOpacity(.2),
        child: Container(
          margin: const EdgeInsets.all(
            20,
          ),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedAvatar(
                therapist.avatar,
                size: 56,
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${therapist.surname} ${therapist.name}',
                                style: context.textTheme.titleLarge,
                                maxLines: 2,
                              ),
                              const Gap(4),
                              if (therapist.mainSpecialization != null)
                                Text(
                                  TherapistPresentationHelpers
                                      .localizeMainSpecialization(context,
                                          therapist.mainSpecialization!),
                                  style: context.textTheme.bodySmall,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                            ],
                          ),
                        ),
                        Icon(
                          OutlineIcons.right,
                          color: context.scheme.onBackground,
                          size: 16,
                        ),
                      ],
                    ),
                    const Gap(16),
                    TherapistCostWithDiscount(
                      minCost: therapist.minCost,
                      discount: discount,
                      workExperience: WorkExperienceWidget(
                        experience: therapist.experience,
                        gradient: GradientResources.primary1,
                        iconSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
