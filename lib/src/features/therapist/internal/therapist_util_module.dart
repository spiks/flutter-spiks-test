import 'package:dio/dio.dart';
import 'package:flutter_spiks_test/src/core/di/injector.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/services/therapist_api_service.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/therapist_api_util.dart';

class TherapistUtilModule {
  static TherapistApiUtil? _apiUtil;

  static TherapistApiUtil getTherapistApiUtil() {
    return _apiUtil ??= TherapistApiUtil(TherapistApiService(getIt<Dio>()));
  }
}
