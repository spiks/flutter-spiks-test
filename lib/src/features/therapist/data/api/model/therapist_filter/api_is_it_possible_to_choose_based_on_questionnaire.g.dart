// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_is_it_possible_to_choose_based_on_questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiIsItPossibleToChooseBasedOnQuestionnaire
    _$$_ApiIsItPossibleToChooseBasedOnQuestionnaireFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ApiIsItPossibleToChooseBasedOnQuestionnaire',
          json,
          ($checkedConvert) {
            final val = _$_ApiIsItPossibleToChooseBasedOnQuestionnaire(
              forMeAndPartner:
                  $checkedConvert('forMeAndPartner', (v) => v as bool),
              forMyself: $checkedConvert('forMyself', (v) => v as bool),
            );
            return val;
          },
        );

Map<String, dynamic> _$$_ApiIsItPossibleToChooseBasedOnQuestionnaireToJson(
        _$_ApiIsItPossibleToChooseBasedOnQuestionnaire instance) =>
    <String, dynamic>{
      'forMeAndPartner': instance.forMeAndPartner,
      'forMyself': instance.forMyself,
    };
