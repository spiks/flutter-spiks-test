import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

abstract class TherapistRepository {
  Future<TherapistList> getTherapistList({
    required TherapistFilterRequestModel filters,
  });

  Future<TherapistDetail> getTherapistById(String id);

  Future<TherapistInitialFilter> getFiltersToSearchForTherapists();
}
