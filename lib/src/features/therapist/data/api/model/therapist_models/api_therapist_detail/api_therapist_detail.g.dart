// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTherapistDetail _$$_ApiTherapistDetailFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistDetail',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistDetail(
          surname: $checkedConvert('surname', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          id: $checkedConvert('id', (v) => v as String),
          mainSpecialization:
              $checkedConvert('mainSpecialization', (v) => v as String?),
          avatar: $checkedConvert(
              'avatar',
              (v) => v == null
                  ? null
                  : ApiMediaImage.fromJson(v as Map<String, dynamic>)),
          employments: $checkedConvert(
              'employments',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiEmployment.fromJson(e as Map<String, dynamic>))
                  .toList()),
          servicePricing: $checkedConvert('servicePricing',
              (v) => ApiServicePricing.fromJson(v as Map<String, dynamic>)),
          higherEducation: $checkedConvert(
              'higherEducation',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ApiHigherEducation.fromJson(e as Map<String, dynamic>))
                  .toList()),
          treatmentTechniques: $checkedConvert(
              'treatmentTechniques',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiTreatmentTechniques.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          workPrinciples:
              $checkedConvert('workPrinciples', (v) => v as String?),
          biography: $checkedConvert('biography', (v) => v as String?),
          videoPresentation: $checkedConvert(
              'videoPresentation',
              (v) => v == null
                  ? null
                  : ApiVideoPresentation.fromJson(v as Map<String, dynamic>)),
          problemsByTypes: $checkedConvert(
              'problemsByTypes',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiTherapistProblemsByTypes.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          additionalSpecializations:
              $checkedConvert('additionalSpecializations', (v) => v as String?),
          creed: $checkedConvert('creed', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistDetailToJson(
        _$_ApiTherapistDetail instance) =>
    <String, dynamic>{
      'surname': instance.surname,
      'name': instance.name,
      'id': instance.id,
      'mainSpecialization': instance.mainSpecialization,
      'avatar': instance.avatar,
      'employments': instance.employments,
      'servicePricing': instance.servicePricing,
      'higherEducation': instance.higherEducation,
      'treatmentTechniques': instance.treatmentTechniques,
      'workPrinciples': instance.workPrinciples,
      'biography': instance.biography,
      'videoPresentation': instance.videoPresentation,
      'problemsByTypes': instance.problemsByTypes,
      'additionalSpecializations': instance.additionalSpecializations,
      'creed': instance.creed,
    };
