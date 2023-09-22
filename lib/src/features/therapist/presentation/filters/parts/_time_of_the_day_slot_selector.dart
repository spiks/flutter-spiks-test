part of '../filter_modal_body.dart';
class _TimeOfTheDaySlotSelector extends StatelessWidget {
  final TimeOfTheDaySlot slot;

  const _TimeOfTheDaySlotSelector({required this.slot});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: _horizontalPadding,
          child: TitleWidget(
            title: L10n.of(context).session_time,
            itemCount: slot.selectedItems.length,
          ),
        ),
        const Gap(16),
        SizedBox(
          height: 64,
          child: ListView.separated(
            padding: _horizontalPadding,
            scrollDirection: Axis.horizontal,
            itemCount: slot.appointmentTimes.length,
            itemBuilder: (_, index) {
              final item = slot.appointmentTimes[index];
              final selected = slot.selectedItems.contains(item);
              return SelectableItem(
                label: _AppointmentTimeLabel(
                  selected: selected,
                  time: slot.appointmentTimes[index],
                ),
                selected: selected,
                onTap: (_) => context
                    .read<FilterBloc>()
                    .add(FilterEvent.changeAppointmentTime(item)),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Gap(8),
          ),
        ),
      ],
    );
  }
}


class _AppointmentTimeLabel extends StatelessWidget {
  final AppointmentTime time;
  final bool selected;
  late final String timeTitle;
  late final String Function(BuildContext context) timeName;

  _AppointmentTimeLabel({
    required this.time,
    required this.selected,
  }) {
    switch (time) {
      case AppointmentTime.morning:
        timeTitle = '08:00 – 12:00';
        timeName = (context) => L10n.of(context).morning;
        break;
      case AppointmentTime.afternoon:
        timeTitle = '12:00 – 18:00';
        timeName = (context) => L10n.of(context).afternoon;
        break;
      case AppointmentTime.evening:
        timeTitle = '18:00 – 23:00';
        timeName = (context) => L10n.of(context).evening;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          timeName(context),
          style: context.textTheme.labelMedium?.copyWith(
            color: selected
                ? context.scheme.background
                : context.scheme.inverseSurface,
          ),
        ),
        Text(
          timeTitle,
          style: context.textTheme.labelSmall?.copyWith(
            color: selected
                ? context.scheme.background
                : context.scheme.inverseSurface,
          ),
        ),
      ],
    );
  }
}
