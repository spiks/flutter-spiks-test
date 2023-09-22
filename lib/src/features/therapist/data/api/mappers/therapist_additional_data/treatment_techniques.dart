import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

class TreatmentTechniquesMapper {
  static TreatmentTechniques fromApi(ApiTreatmentTechniques api) {
    return TreatmentTechniques(
      url: api.url,
      title: api.title,
      author: api.author,
    );
  }

  static List<TreatmentTechniques> listFromApiList(
    List<ApiTreatmentTechniques> api,
  ) {
    return api.map((tech) => fromApi(tech)).toList();
  }
}
