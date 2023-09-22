part of '../filter_modal_body.dart';

class _GenderSelector extends StatelessWidget {
  final Gender currentGender;

  const _GenderSelector({required this.currentGender});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _horizontalPadding,
      child: Column(
        children: [
          TitleWidget(
            title:  L10n.of(context).therapist_gender,
            itemCount: currentGender == Gender.other ? 0 : 1,
          ),
          const Gap(16),
          Row(
            children: [
              SelectableItem(
                title: L10n.of(context).sex_male,
                selected: currentGender == Gender.male,
                onTap: (_) => context.read<FilterBloc>().add(
                  const FilterEvent.changeTherapistGender(
                    Gender.male,
                  ),
                ),
              ),
              const Gap(8),
              SelectableItem(
                title: L10n.of(context).sex_female,
                selected: currentGender == Gender.female,
                onTap: (_) => context.read<FilterBloc>().add(
                  const FilterEvent.changeTherapistGender(
                    Gender.female,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
