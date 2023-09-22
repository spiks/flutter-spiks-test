import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/models/media_image/api/model/api_media_image.dart';

import '../../therapist_additional_data/api_therapist_additional_data.dart';

part 'api_therapist.freezed.dart';

part 'api_therapist.g.dart';

@freezed
class ApiTherapist with _$ApiTherapist {
  factory ApiTherapist({
    String? surname,
    @Default('') String name,
    ApiMediaImage? avatar,
    String? mainSpecialization,
    required ApiServicePricing servicePricing,
    required String id,
    required List<ApiEmployment> employments,
  }) = _ApiTherapist;

  factory ApiTherapist.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistFromJson(json);
}
