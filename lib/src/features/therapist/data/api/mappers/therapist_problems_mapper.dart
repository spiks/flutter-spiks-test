import 'dart:developer';

import 'package:flutter_spiks_test/src/core/values/enum_values/enum_values.dart';

import '../../../domain/models/therapist_additional_data/therapist_problems.dart';
import '../../data.dart';
import 'therapist_additional_data/therapist_problems_by_group_mapper.dart';

class TherapistProblemsByTypesMapper {
  TherapistProblemsByTypesMapper._();

  static TherapistProblemsByTypes fromApi(ApiTherapistProblemsByTypes api) {
    switch (api.type) {
      case 'myself':
        return TherapistProblemsForMyself(
          type: QuestionnaireType.myself,
          problemsByType: TherapistProblemsByGroupMapper.listFromApiList(
            api.problemsByGroups ?? [],
          ),
        );
      case 'me_and_partner':
        return TherapistProblemsForMeAndPartner(
          type: QuestionnaireType.me_and_partner,
          problems: TherapistProblemMapper.listFromApiList(
            api.problems ?? [],
          ),
        );
      default:
        return TherapistProblemsByTypes(type: QuestionnaireType.all);
    }
  }

  static List<TherapistProblemsByTypes> listFromApiList(
    List<ApiTherapistProblemsByTypes> api,
  ) {
    return api.map((prob) => fromApi(prob)).toList();
  }

  static List<String> getTitleFromApi(ApiTherapistProblemsByTypes api) {
    if (api.problems != null) {
      return api.problems?.map((e) => e.name).toList() ?? [];
    } else {
      final list = (api.problemsByGroups ?? [])
          .map((e) => e.problems)
          .expand((element) => element);
      return list.map((e) => e.name).toList();
    }
  }

  static List<String> getTitleListFromApiList(
      List<ApiTherapistProblemsByTypes> api) {
    final list = api
        .map((e) => getTitleFromApi(e))
        .expand((element) => element)
        .toList();
    log(list.toString());
    return list;
  }
}
