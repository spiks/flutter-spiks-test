// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist_additional_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiEmployment _$$_ApiEmploymentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiEmployment',
      json,
      ($checkedConvert) {
        final val = _$_ApiEmployment(
          years: $checkedConvert('years', (v) => v as int),
          companyName: $checkedConvert('companyName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiEmploymentToJson(_$_ApiEmployment instance) =>
    <String, dynamic>{
      'years': instance.years,
      'companyName': instance.companyName,
    };

_$_ApiServicePricing _$$_ApiServicePricingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiServicePricing',
      json,
      ($checkedConvert) {
        final val = _$_ApiServicePricing(
          forIndividualSession:
              $checkedConvert('forIndividualSession', (v) => v as int?),
          forPairSession: $checkedConvert('forPairSession', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiServicePricingToJson(
        _$_ApiServicePricing instance) =>
    <String, dynamic>{
      'forIndividualSession': instance.forIndividualSession,
      'forPairSession': instance.forPairSession,
    };

_$_ApiHigherEducation _$$_ApiHigherEducationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiHigherEducation',
      json,
      ($checkedConvert) {
        final val = _$_ApiHigherEducation(
          country: $checkedConvert('country', (v) => v as String),
          educationalInstitution:
              $checkedConvert('educationalInstitution', (v) => v as String),
          speciality: $checkedConvert('speciality', (v) => v as String),
          graduationYear: $checkedConvert('graduationYear', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiHigherEducationToJson(
        _$_ApiHigherEducation instance) =>
    <String, dynamic>{
      'country': instance.country,
      'educationalInstitution': instance.educationalInstitution,
      'speciality': instance.speciality,
      'graduationYear': instance.graduationYear,
    };

_$_ApiTreatmentTechniques _$$_ApiTreatmentTechniquesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTreatmentTechniques',
      json,
      ($checkedConvert) {
        final val = _$_ApiTreatmentTechniques(
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          author: $checkedConvert('author', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTreatmentTechniquesToJson(
        _$_ApiTreatmentTechniques instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'author': instance.author,
    };

_$_ApiVideoPresentation _$$_ApiVideoPresentationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiVideoPresentation',
      json,
      ($checkedConvert) {
        final val = _$_ApiVideoPresentation(
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiVideoPresentationToJson(
        _$_ApiVideoPresentation instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_ApiTherapistProblemByGroup _$$_ApiTherapistProblemByGroupFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistProblemByGroup',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistProblemByGroup(
          groupName: $checkedConvert('groupName', (v) => v as String),
          problems: $checkedConvert(
              'problems',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ApiTherapistProblem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistProblemByGroupToJson(
        _$_ApiTherapistProblemByGroup instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'problems': instance.problems,
    };

_$_ApiTherapistProblem _$$_ApiTherapistProblemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistProblem',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistProblem(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistProblemToJson(
        _$_ApiTherapistProblem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ApiTherapistProblemsByTypes _$$_ApiTherapistProblemsByTypesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistProblemsByTypes',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistProblemsByTypes(
          type: $checkedConvert('type', (v) => v as String),
          problemsByGroups: $checkedConvert(
              'problemsByGroups',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ApiTherapistProblemByGroup.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          problems: $checkedConvert(
              'problems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ApiTherapistProblem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistProblemsByTypesToJson(
        _$_ApiTherapistProblemsByTypes instance) =>
    <String, dynamic>{
      'type': instance.type,
      'problemsByGroups': instance.problemsByGroups,
      'problems': instance.problems,
    };

_$_ApiTherapistFilterProblem _$$_ApiTherapistFilterProblemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistFilterProblem',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistFilterProblem(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          questionnaireType:
              $checkedConvert('questionnaireType', (v) => v as String),
          groupName: $checkedConvert('groupName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistFilterProblemToJson(
        _$_ApiTherapistFilterProblem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'questionnaireType': instance.questionnaireType,
      'groupName': instance.groupName,
    };
