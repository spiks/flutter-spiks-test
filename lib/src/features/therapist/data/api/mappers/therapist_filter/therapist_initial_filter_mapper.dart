import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/therapist_additional_data/therapist_filter_problem_mapper.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/therapist_problems_mapper.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/therapist_filter/therapist_filter.dart';

import '../../model/model.dart';
import '../therapist_additional_data/therapist_additional_data.dart';
import 'age_mapper.dart';
import 'is_it_possible_to_choose_based_on_questionnaire_mapper.dart';

class TherapistInitialFilterMapper {
  static TherapistInitialFilter fromApi(ApiTherapistInitialFilter api) {
    return TherapistInitialFilter(
      age: AgeMapper.fromApi(api.age),
      isItPossibleToChooseBasedOnQuestionnaire:
          IsItPossibleToChooseBasedOnQuestionnaireMapper.fromApi(
        api.isItPossibleToChooseBasedOnQuestionnaire,
      ),
      problems:
          TherapistFilterProblemsMapper.listFromApiList(api.problems),
    );
  }
}
