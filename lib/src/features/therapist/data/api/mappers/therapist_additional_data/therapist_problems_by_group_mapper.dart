import 'package:flutter_spiks_test/src/features/therapist/data/api/api.dart';

import '../../../../domain/models/therapist_additional_data/therapist_problems_by_group.dart';
import '../../model/model.dart';

class TherapistProblemsByGroupMapper {
  static TherapistProblemsByGroup fromApi(ApiTherapistProblemByGroup api) {
    return TherapistProblemsByGroup(
      api.groupName,
      TherapistProblemMapper.listFromApiList(api.problems),
    );
  }

  static List<TherapistProblemsByGroup> listFromApiList(
      List<ApiTherapistProblemByGroup> api) {
    return api.map((spec) => fromApi(spec)).toList();
  }
}
