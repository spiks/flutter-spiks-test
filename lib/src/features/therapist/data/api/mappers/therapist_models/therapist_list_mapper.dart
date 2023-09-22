
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

import 'therapist_mapper.dart';

class TherapistListMapper {
  static TherapistList fromApi(ApiTherapistList api) {
    return TherapistList(
      therapistList: api.items
          .map((therapist) => TherapistMapper.fromApi(therapist))
          .toList(),
      nextPageCursor: api.nextPageCursor,
    );
  }
}
