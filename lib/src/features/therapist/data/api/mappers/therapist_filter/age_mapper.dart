import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';

import '../../../../domain/models/models.dart';

class AgeMapper {
  static Age fromApi(ApiAge api) => Age(
        from: api.from.clamp(18, 99),
        to: api.to.clamp(18, 99),
      );

  static ApiAge toApi(Age model) {
    return ApiAge(from: model.from, to: model.to);
  }
}
