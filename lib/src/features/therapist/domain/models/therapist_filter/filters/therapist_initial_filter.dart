import 'package:flutter_spiks_test/src/features/therapist/domain/models/therapist_additional_data/therapist_problems.dart';

import '../../models.dart';
import '../additional_data/therapist_filter_problem.dart';

class TherapistInitialFilter {
  final Age age;
  final IsItPossibleToChooseBasedOnQuestionnaire
      isItPossibleToChooseBasedOnQuestionnaire;
  final List<TherapistFilterProblem> problems;

  TherapistInitialFilter({
    required this.age,
    required this.isItPossibleToChooseBasedOnQuestionnaire,
    required this.problems,
  });
}
