import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_therapist_additional_data.g.dart';

part 'api_therapist_additional_data.freezed.dart';

@freezed
class ApiEmployment with _$ApiEmployment {
  factory ApiEmployment({
    required int years,
    required String companyName,
  }) = _ApiEmployment;

  factory ApiEmployment.fromJson(Map<String, Object?> json) =>
      _$ApiEmploymentFromJson(json);
}

@freezed
class ApiServicePricing with _$ApiServicePricing {
  factory ApiServicePricing({
    int? forIndividualSession,
    int? forPairSession,
  }) = _ApiServicePricing;

  factory ApiServicePricing.fromJson(Map<String, Object?> json) =>
      _$ApiServicePricingFromJson(json);
}

@freezed
class ApiHigherEducation with _$ApiHigherEducation {
  factory ApiHigherEducation({
    required String country,
    required String educationalInstitution,
    required String speciality,
    required int graduationYear,
  }) = _ApiHigherEducation;

  factory ApiHigherEducation.fromJson(Map<String, Object?> json) =>
      _$ApiHigherEducationFromJson(json);
}

@freezed
class ApiTreatmentTechniques with _$ApiTreatmentTechniques {
  factory ApiTreatmentTechniques({
    required String url,
    required String title,
    required String author,
  }) = _ApiTreatmentTechniques;

  factory ApiTreatmentTechniques.fromJson(Map<String, Object?> json) =>
      _$ApiTreatmentTechniquesFromJson(json);
}

@freezed
class ApiVideoPresentation with _$ApiVideoPresentation {
  factory ApiVideoPresentation({
    required String url,
  }) = _ApiVideoPresentation;

  factory ApiVideoPresentation.fromJson(Map<String, Object?> json) =>
      _$ApiVideoPresentationFromJson(json);
}

@freezed
class ApiTherapistProblemByGroup with _$ApiTherapistProblemByGroup{
  factory ApiTherapistProblemByGroup({
    required String groupName,
    required List<ApiTherapistProblem> problems,
  }) = _ApiTherapistProblemByGroup;

  factory ApiTherapistProblemByGroup.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistProblemByGroupFromJson(json);
}

@freezed
class ApiTherapistProblem with _$ApiTherapistProblem {
  factory ApiTherapistProblem({
    required String id,
    required String name,
  }) = _ApiTherapistProblem;

  factory ApiTherapistProblem.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistProblemFromJson(json);
}

@freezed
class ApiTherapistProblemsByTypes with _$ApiTherapistProblemsByTypes {
  factory ApiTherapistProblemsByTypes({
    required String type,
    List<ApiTherapistProblemByGroup>? problemsByGroups,
    List<ApiTherapistProblem>? problems,
  }) = _ApiTherapistProblemsByTypes;

  factory ApiTherapistProblemsByTypes.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistProblemsByTypesFromJson(json);
}

@freezed
class ApiTherapistFilterProblem with _$ApiTherapistFilterProblem {
  factory ApiTherapistFilterProblem({
    required String id,
    required String name,
    required String questionnaireType,
    String? groupName,
  }) = _ApiTherapistFilterProblem;

  factory ApiTherapistFilterProblem.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistFilterProblemFromJson(json);
}
