import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/therapist_additional_data/api_therapist_additional_data.dart';

import 'api_age.dart';
import 'api_is_it_possible_to_choose_based_on_questionnaire.dart';

part 'api_therapist_initial_filter.freezed.dart';

part 'api_therapist_initial_filter.g.dart';

@freezed
class ApiTherapistInitialFilter with _$ApiTherapistInitialFilter {
  factory ApiTherapistInitialFilter({
    required ApiAge age,
    required ApiIsItPossibleToChooseBasedOnQuestionnaire
        isItPossibleToChooseBasedOnQuestionnaire,
    required List<ApiTherapistFilterProblem> problems,
  }) = _ApiTherapistInitialFilter;

  factory ApiTherapistInitialFilter.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistInitialFilterFromJson(json);
}
