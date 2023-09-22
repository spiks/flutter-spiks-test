import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/buttons/ink_well_m3.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final DateTime selectedDate;
  final void Function(DateTime, DateTime)? onDateSelected;

  const CalendarWidget({
    super.key,
    required this.selectedDate,
    this.onDateSelected,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        border: Border.all(
          width: 4,
          color: context.scheme.primary.withOpacity(0.1),
        ),
      ),
      child: TableCalendar(
        pageJumpingEnabled: true,
        daysOfWeekVisible: false,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          leftChevronVisible: false,
          rightChevronVisible: false,
        ),
        onCalendarCreated: (pageController) => _pageController = pageController,
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, day) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  DateFormat.MMMM().format(day).capitalize(0),
                  style: context.textTheme.labelLarge,
                ),
                const Spacer(),
                InkWellM3(
                  padding: const EdgeInsets.all(4),
                  splashColor: context.scheme.background,
                  onTap: () => _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
                  child: Icon(
                    CupertinoIcons.left_chevron,
                    size: 20,
                    color: context.scheme.primary,
                  ),
                ),
                // const Gap(8),
                InkWellM3(
                  padding: const EdgeInsets.all(4),
                  splashColor: context.scheme.background,
                  onTap: () => _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: context.scheme.primary,
                  ),
                ),
              ],
            ),
          ),
          outsideBuilder: (_, dateTime, __) => _CalendarDate(
            backgroundColor: context.scheme.background,
            textColor: context.scheme.inverseSurface,
            dateTime: dateTime,
          ),
          disabledBuilder: (_, dateTime, __) => _CalendarDate(
            backgroundColor: context.scheme.background,
            textColor: context.scheme.onBackground.withOpacity(.3),
            dateTime: dateTime,
          ),
          defaultBuilder: (_, dateTime, __) => _CalendarDate(
            backgroundColor: context.scheme.background,
            textColor: context.scheme.inverseSurface,
            dateTime: dateTime,
          ),
          todayBuilder: (_, dateTime, __) => _CalendarDate(
            backgroundColor: context.scheme.primary,
            textColor: context.scheme.background,
            dateTime: dateTime,
          ),
        ),
        startingDayOfWeek: StartingDayOfWeek.monday,
        focusedDay: widget.selectedDate,
        currentDay: widget.selectedDate,
        firstDay: DateTime.now(),
        lastDay: DateTime.now().add(const Duration(days: 29)),
        onDaySelected: widget.onDateSelected,
      ),
    );
  }
}

class _CalendarDate extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final DateTime dateTime;

  const _CalendarDate({
    required this.backgroundColor,
    required this.textColor,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dateTime.day.toString(),
              style: context.textTheme.labelMedium?.copyWith(color: textColor),
            ),
            Text(
              DateFormat('EEE').format(dateTime),
              style: context.textTheme.labelSmall?.copyWith(color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
