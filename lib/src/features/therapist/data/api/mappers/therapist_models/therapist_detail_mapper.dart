import 'dart:math';

import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/therapist_additional_data/therapist_additional_data.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/therapist_problems_mapper.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';

import '../../../../domain/values/main_specialization.dart';

class TherapistDetailMapper {
  static TherapistDetail fromApi(ApiTherapistDetail api) {
    return TherapistDetail(
      id: api.id,
      name: api.name,
      surname: api.surname ?? '',
      avatar: api.avatar?.sizes.original.url,
      employments: EmploymentMapper.listFromApiList(api.employments),
      mainSpecialization: mainSpecializationFromString(api.mainSpecialization),
      servicePricing: ServicePricingMapper.fromApi(api.servicePricing),
      higherEducation: HigherEducationMapper.listFromApiList(
        api.higherEducation,
      ),
      treatmentTechniques:
          TreatmentTechniquesMapper.listFromApiList(api.treatmentTechniques),
      workPrinciples: api.workPrinciples,
      biography: api.biography,
      videoPresentationUrl: api.videoPresentation?.url,
      problemsByTypes:
          TherapistProblemsByTypesMapper.listFromApiList(api.problemsByTypes),
      creed: api.creed,
      experience: api.employments.fold(
        0,
        (previousValue, employment) => previousValue + employment.years,
      ),
      minCost: min(
        api.servicePricing.forIndividualSession ?? 0,
        api.servicePricing.forPairSession ?? 0,
      ),
      problemsTitles: TherapistProblemsByTypesMapper.getTitleListFromApiList(
        api.problemsByTypes,
      ),
    );
  }
}
