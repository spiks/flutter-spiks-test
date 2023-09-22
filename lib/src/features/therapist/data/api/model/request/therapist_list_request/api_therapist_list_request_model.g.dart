// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist_list_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTherapistListRequestModel _$ApiTherapistListRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ApiTherapistListRequestModel',
      json,
      ($checkedConvert) {
        final val = ApiTherapistListRequestModel(
          age: $checkedConvert(
              'age', (v) => ApiAge.fromJson(v as Map<String, dynamic>)),
          appointmentSlots: $checkedConvert(
              'appointmentSlots',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ApiAppointmentSlots.fromJson(e as Map<String, dynamic>))
                  .toList()),
          chooseBasedOnQuestionnaireType: $checkedConvert(
              'chooseBasedOnQuestionnaireType', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          onlyMyTherapists:
              $checkedConvert('onlyMyTherapists', (v) => v as bool),
          pagination: $checkedConvert('pagination',
              (v) => Pagination.fromJson(v as Map<String, dynamic>)),
          prices: $checkedConvert('prices',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          searchQuery: $checkedConvert('searchQuery', (v) => v as String?),
          mainSpecialization:
              $checkedConvert('mainSpecialization', (v) => v as String?),
          problemIds: $checkedConvert('problemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApiTherapistListRequestModelToJson(
        ApiTherapistListRequestModel instance) =>
    <String, dynamic>{
      'age': instance.age.toJson(),
      'appointmentSlots':
          instance.appointmentSlots?.map((e) => e.toJson()).toList(),
      'chooseBasedOnQuestionnaireType': instance.chooseBasedOnQuestionnaireType,
      'gender': instance.gender,
      'onlyMyTherapists': instance.onlyMyTherapists,
      'pagination': instance.pagination.toJson(),
      'prices': instance.prices,
      'searchQuery': instance.searchQuery,
      'mainSpecialization': instance.mainSpecialization,
      'problemIds': instance.problemIds,
    };
