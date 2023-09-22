import 'package:flutter_spiks_test/src/features/therapist/domain/models/therapists_models/therapist.dart';

import '../therapist_additional_data/therapist_additional_data.dart';
import '../therapist_additional_data/therapist_problems.dart';

class TherapistDetail extends Therapist {
  TherapistDetail({
    required super.id,
    required super.name,
    required super.surname,
    super.avatar,
    super.mainSpecialization,
    required super.experience,
    required super.minCost,
    required super.employments,
    required this.servicePricing,
    required this.higherEducation,
    required this.treatmentTechniques,
    required this.workPrinciples,
    required this.biography,
    required this.videoPresentationUrl,
    this.additionalSpecializations,
    required this.problemsByTypes,
    required this.problemsTitles,
    required this.creed,
  });

  final ServicePricing servicePricing;
  final List<HigherEducation> higherEducation;
  final List<TreatmentTechniques> treatmentTechniques;
  final String? workPrinciples;
  final String? biography;
  final String? videoPresentationUrl;
  final List<TherapistProblemsByTypes> problemsByTypes;
  final List<String> problemsTitles;
  final String? additionalSpecializations;
  final String? creed;
}
