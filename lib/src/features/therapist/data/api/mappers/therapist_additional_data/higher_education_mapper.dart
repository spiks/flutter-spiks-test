
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
class HigherEducationMapper {
  static HigherEducation fromApi(ApiHigherEducation api) {
    return HigherEducation(
      country: api.country,
      educationalInstitution: api.educationalInstitution,
      speciality: api.speciality,
      graduationYear: api.graduationYear,
    );
  }

  static List<HigherEducation> listFromApiList(List<ApiHigherEducation> api) {
    return api.map((ed) => fromApi(ed)).toList();
  }
}
