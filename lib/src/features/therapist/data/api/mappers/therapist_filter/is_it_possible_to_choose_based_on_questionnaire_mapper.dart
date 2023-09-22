import '../../../../domain/models/models.dart';
import '../../model/model.dart';

class IsItPossibleToChooseBasedOnQuestionnaireMapper {
  static IsItPossibleToChooseBasedOnQuestionnaire fromApi(
    ApiIsItPossibleToChooseBasedOnQuestionnaire api,
  ) {
    return IsItPossibleToChooseBasedOnQuestionnaire(
      forMeAndPartner: api.forMeAndPartner,
      forMyself: api.forMyself,
    );
  }

  static ApiIsItPossibleToChooseBasedOnQuestionnaire toApi(
    IsItPossibleToChooseBasedOnQuestionnaire model,
  ) {
    return ApiIsItPossibleToChooseBasedOnQuestionnaire(
      forMeAndPartner: model.forMeAndPartner,
      forMyself: model.forMyself,
    );
  }
}
