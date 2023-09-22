import 'package:flutter_spiks_test/src/core/values/enum_values/enum_values.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/api.dart';

import '../../../../domain/models/therapist_filter/additional_data/therapist_filter_problem.dart';

class TherapistFilterProblemsMapper {
  static TherapistFilterProblem fromApi(ApiTherapistFilterProblem api) {
    QuestionnaireType type = QuestionnaireType.all;
    switch (api.questionnaireType) {
      case 'myself':
        type = QuestionnaireType.myself;
      case 'me_and_partner':
        type = QuestionnaireType.me_and_partner;
      default:
        break;
    }

    return TherapistFilterProblem(api.groupName, api.id, api.name, type);
  }

  static List<TherapistFilterProblem> listFromApiList(
    List<ApiTherapistFilterProblem> api,
  ) {
    return api.map((prob) => fromApi(prob)).toList();
  }
}
