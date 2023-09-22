import 'dart:math';

import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

import '../../../../domain/values/main_specialization.dart';
import '../therapist_additional_data/therapist_additional_data.dart';

class TherapistMapper {
  static Therapist fromApi(ApiTherapist api) {
    return Therapist(
      id: api.id,
      name: api.name,
      surname: api.surname ?? 'Терапевт',
      employments:
          api.employments.map((emp) => EmploymentMapper.fromApi(emp)).toList(),
      avatar: api.avatar?.sizes.small.url,
      mainSpecialization: mainSpecializationFromString(api.mainSpecialization),
      minCost: _calculateMinCost(api.servicePricing.forIndividualSession,
          api.servicePricing.forPairSession),
      experience: api.employments.fold(
        0,
        (previousValue, employment) => previousValue + employment.years,
      ),
    );
  }

  static int _calculateMinCost(int? forIndividualSession, int? forPairSession) {
    if (forIndividualSession != null && forPairSession != null) {
      return min(forIndividualSession, forPairSession);
    } else {
      return forIndividualSession ?? forPairSession ?? 0;
    }
  }
}
