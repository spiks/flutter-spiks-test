import '../../../../../core/values/enum_values/enum_values.dart';
import 'therapist_problem.dart';
import 'therapist_problems_by_group.dart';

class TherapistProblemsByTypes {
  final QuestionnaireType type;

  TherapistProblemsByTypes({required this.type});
}

class TherapistProblemsForMyself extends TherapistProblemsByTypes {
  TherapistProblemsForMyself({
    required super.type,
    required this.problemsByType,
  });

  final List<TherapistProblemsByGroup> problemsByType;
}

class TherapistProblemsForMeAndPartner extends TherapistProblemsByTypes {
  TherapistProblemsForMeAndPartner({
    required super.type,
    required this.problems,
  });

  final List<TherapistProblem> problems;
}
