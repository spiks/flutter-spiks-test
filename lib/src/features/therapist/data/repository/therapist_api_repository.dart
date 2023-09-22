import 'dart:developer';

import 'package:flutter_spiks_test/src/features/therapist/data/api/therapist_api_util.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/repositories/therapist_repository.dart';

class TherapistApiRepository extends TherapistRepository {
  final TherapistApiUtil _apiUtil;

  TherapistApiRepository(this._apiUtil);

  @override
  Future<TherapistInitialFilter> getFiltersToSearchForTherapists() async {
    return _apiUtil.getFiltersToSearchForTherapists();
  }

  @override
  Future<TherapistDetail> getTherapistById(String id) async {
    return _apiUtil.getTherapistById(id);
  }

  @override
  Future<TherapistList> getTherapistList({
    required TherapistFilterRequestModel filters,
  }) async {
    log(filters.toString(), name: 'get ther list');
    return _apiUtil.getTherapistList(
      requestModel: filters,
    );
  }
}
