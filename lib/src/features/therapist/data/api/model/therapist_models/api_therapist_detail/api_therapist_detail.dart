import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/models/media_image/api/model/api_media_image.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/therapist_additional_data/api_therapist_additional_data.dart';

part 'api_therapist_detail.freezed.dart';

part 'api_therapist_detail.g.dart';

@freezed
class ApiTherapistDetail with _$ApiTherapistDetail {
  factory ApiTherapistDetail({
    required String? surname,
    @Default('') String name,
    required String id,
    required String? mainSpecialization,
    ApiMediaImage? avatar,
    required List<ApiEmployment> employments,
    required ApiServicePricing servicePricing,
    required List<ApiHigherEducation> higherEducation,
    required List<ApiTreatmentTechniques> treatmentTechniques,
    // ?
    required String? workPrinciples,
    // ?
    required String? biography,
    // ?
    required ApiVideoPresentation? videoPresentation,
    required List<ApiTherapistProblemsByTypes> problemsByTypes,
    String? additionalSpecializations,
    String? creed,
  }) = _ApiTherapistDetail;

  factory ApiTherapistDetail.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistDetailFromJson(json);
}
