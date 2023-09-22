import '../../../../domain/models/therapist_additional_data/therapist_problem.dart';
import '../../model/model.dart';

class TherapistProblemMapper {
  static TherapistProblem fromApi(ApiTherapistProblem api) {
    return TherapistProblem(api.id, api.name);
  }

  static List<TherapistProblem> listFromApiList(
    List<ApiTherapistProblem> api,
  ) {
    return api.map((item) => fromApi(item)).toList();
  }
}
