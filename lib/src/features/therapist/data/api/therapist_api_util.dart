import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/mappers.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/services/therapist_api_service.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

class TherapistApiUtil {
  final TherapistApiService _service;

  TherapistApiUtil(this._service);

  Future<TherapistList> getTherapistList({
    required TherapistFilterRequestModel requestModel,
  }) async {
    final requestBody = TherapistListRequestModelMapper.toApi(requestModel);
    final api = await _service.getTherapistList(requestBody: requestBody);

    return TherapistListMapper.fromApi(api);
  }

  Future<TherapistDetail> getTherapistById(String id) async {
    final api = await _service.getTherapistById(id);
    return TherapistDetailMapper.fromApi(api);
  }

  Future<TherapistInitialFilter> getFiltersToSearchForTherapists() async {
    final api = await _service.getFiltersToSearchForTherapists();

    return TherapistInitialFilterMapper.fromApi(api);
  }
}
