// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_therapist_initial_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiTherapistInitialFilter _$$_ApiTherapistInitialFilterFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ApiTherapistInitialFilter',
      json,
      ($checkedConvert) {
        final val = _$_ApiTherapistInitialFilter(
          age: $checkedConvert(
              'age', (v) => ApiAge.fromJson(v as Map<String, dynamic>)),
          isItPossibleToChooseBasedOnQuestionnaire: $checkedConvert(
              'isItPossibleToChooseBasedOnQuestionnaire',
              (v) => ApiIsItPossibleToChooseBasedOnQuestionnaire.fromJson(
                  v as Map<String, dynamic>)),
          problems: $checkedConvert(
              'problems',
              (v) => (v as List<dynamic>)
                  .map((e) => ApiTherapistFilterProblem.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ApiTherapistInitialFilterToJson(
        _$_ApiTherapistInitialFilter instance) =>
    <String, dynamic>{
      'age': instance.age,
      'isItPossibleToChooseBasedOnQuestionnaire':
          instance.isItPossibleToChooseBasedOnQuestionnaire,
      'problems': instance.problems,
    };
