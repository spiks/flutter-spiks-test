import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/core/values/values.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/models/time_of_the_day_slot.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/values/appointment_time.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/filter_bloc/filter_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/therapist_list_bloc/therapist_list_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/values/therapist_price_options.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/filters/widgets/selecatable_item.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/filters/widgets/title_widget.dart';
import 'package:flutter_spiks_test/src/src.dart';

part 'parts/_age_slider.dart';
part 'parts/_gender_selector.dart';
part 'parts/_price_selector.dart';
part 'parts/_questionnaire_type_selector.dart';
part 'parts/_table_calendar_widget.dart';
part 'parts/_time_of_the_day_slot_selector.dart';

const EdgeInsets _horizontalPadding = EdgeInsets.symmetric(horizontal: 24);
const double _verticalGap = 24;

class FilterModalBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: _horizontalPadding,
        child: ColoredButton(
          titleText: L10n.of(context).apply_filters,
          buttonColor: context.scheme.primary,
          onPressed: () {
            context.read<TherapistListBloc>().add(
              const TherapistListEvent.applyFilter(),
            );
            Navigator.of(context).pop();
          },
        ),
      ),
      appBar: BottomSheetAppBar(
        title: L10n.of(context).filters,
        backButtonText: L10n.of(context).close,
        trailing: TextButton(
          onPressed: () => context.read<FilterBloc>().add(
            const FilterEvent.dropFilter(),
          ),
          child: Text(
            L10n.of(context).drop,
            style: context.textTheme.titleMedium!.copyWith(
              color: context.scheme.primary,
            ),
          ),
        ),
      ),
      body: GradientBordersWrapper(
        axis: Axis.vertical,
        color: context.scheme.background,
        end: false,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 64),
          child: BlocBuilder<FilterBloc, FilterState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              filterChanged: (initial, filters, status) => ListView(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                ),
                children: [
                  _TableCalendarWidget(
                    selectedDate: filters.timeOfTheDaySlot.selectedDate,
                  ),
                  const Gap(_verticalGap),
                  if (filters.timeOfTheDaySlot.appointmentTimes.isNotEmpty)
                    _TimeOfTheDaySlotSelector(
                      slot: filters.timeOfTheDaySlot,
                    ),
                  const Gap(_verticalGap),
                  _QuestionnaireTypeSelector(
                    questionnaireType: filters.chooseBasedOnQuestionnaireType,
                  ),
                  const Gap(_verticalGap),
                  _PriceSelector(
                    prices: filters.price,
                  ),
                  const Gap(_verticalGap),
                  _GenderSelector(
                    currentGender: filters.gender,
                  ),
                  const Gap(_verticalGap),
                  _AgeSlider(
                    initialAge: initial.age,
                    currentAge: filters.age,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
