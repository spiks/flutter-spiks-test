import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:flutter_spiks_test/src/core/network/network.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';

class TherapistApiService {
  final Dio _dio;

  TherapistApiService(this._dio);

  Future<ApiTherapistList> getTherapistList({
    required ApiTherapistListRequestModel requestBody,
  }) async {
    final response = await _dio.request(
      Endpoints.patientListTherapists,
      data: RequestDataWrapper.configureRequestData(
        requestBody.toJson(),
      ),
    );

    final json =
        (response.data as Map<String, dynamic>)['data'] as Map<String, dynamic>;

    return ApiTherapistList.fromJson(json);
  }

  Future<ApiTherapistDetail> getTherapistById(
    String id,
  ) async {
    final response = await _dio.request(
      Endpoints.patientGetTherapist,
      data: RequestDataWrapper.configureRequestData(
        {'id': id},
      ),
    );
    log(response.toString(), name: 'response');

    final json =
        (response.data as Map<String, dynamic>)['data'] as Map<String, dynamic>;

    return ApiTherapistDetail.fromJson(json);
  }

  Future<ApiTherapistInitialFilter> getFiltersToSearchForTherapists() async {
    final response = await _dio.request(
      Endpoints.patientGetFiltersToSearchForTherapists,
    );
    // log(response.toString(), name: 'getFiltersToSearchForTherapists');
    final json =
        (response.data as Map<String, dynamic>)['data'] as Map<String, dynamic>;
    return ApiTherapistInitialFilter.fromJson(json);
  }
}
