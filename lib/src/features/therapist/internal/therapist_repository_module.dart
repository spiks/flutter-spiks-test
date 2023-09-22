import 'package:flutter_spiks_test/src/features/therapist/data/repository/therapist_api_repository.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/therapist_util_module.dart';

class TherapistRepositoryModule {
  static TherapistApiRepository? _apiRepository;

  static TherapistApiRepository getTherapistApiRepository() {
    return _apiRepository ??=
        TherapistApiRepository(TherapistUtilModule.getTherapistApiUtil());
  }
}
