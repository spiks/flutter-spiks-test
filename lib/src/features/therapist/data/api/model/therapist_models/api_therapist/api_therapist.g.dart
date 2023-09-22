// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTherapist _$$_ApiTherapistFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapist',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapist(
          surname: $checkedConvert('surname', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          avatar: $checkedConvert(
              'avatar',
              (v) => v == null
                  ? null
                  : ApiMediaImage.fromJson(v as Map<String, dynamic>)),
          mainSpecialization:
              $checkedConvert('mainSpecialization', (v) => v as String?),
          servicePricing: $checkedConvert('servicePricing',
              (v) => ApiServicePricing.fromJson(v as Map<String, dynamic>)),
          id: $checkedConvert('id', (v) => v as String),
          employments: $checkedConvert(
              'employments',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiEmployment.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistToJson(_$_ApiTherapist instance) =>
    <String, dynamic>{
      'surname': instance.surname,
      'name': instance.name,
      'avatar': instance.avatar,
      'mainSpecialization': instance.mainSpecialization,
      'servicePricing': instance.servicePricing,
      'id': instance.id,
      'employments': instance.employments,
    };
