import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_is_it_possible_to_choose_based_on_questionnaire.g.dart';

part 'api_is_it_possible_to_choose_based_on_questionnaire.freezed.dart';

@freezed
class ApiIsItPossibleToChooseBasedOnQuestionnaire
    with _$ApiIsItPossibleToChooseBasedOnQuestionnaire {
  factory ApiIsItPossibleToChooseBasedOnQuestionnaire({
    required bool forMeAndPartner,
    required bool forMyself,
  }) = _ApiIsItPossibleToChooseBasedOnQuestionnaire;

  factory ApiIsItPossibleToChooseBasedOnQuestionnaire.fromJson(
    Map<String, Object?> json,
  ) =>
      _$ApiIsItPossibleToChooseBasedOnQuestionnaireFromJson(json);
}
