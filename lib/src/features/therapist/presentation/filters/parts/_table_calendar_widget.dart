part of '../filter_modal_body.dart';

class _TableCalendarWidget extends StatelessWidget {
  final DateTime selectedDate;

  const _TableCalendarWidget({required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _horizontalPadding,
      child: Column(
        children: [
          TitleWidget(
            title: L10n.of(context).session_date,
          ),
          const Gap(16),
          CalendarWidget(
            selectedDate: selectedDate,
            onDateSelected: (_, date) =>
                context.read<FilterBloc>().add(FilterEvent.changeDate(date)),
          ),
        ],
      ),
    );
  }
}
