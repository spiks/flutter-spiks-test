import 'package:flutter_spiks_test/data/repositories/models/therapists_models/therapist.dart';

/// Расширенная модель терапевта (Therapist)
class TherapistDetail extends Therapist {

  TherapistDetail({
    required super.id,
    required super.name,
    required super.surname,
    required super.experience,
    this.workPrinciples,
    this.biography,
    super.avatar,
    this.additionalSpecializations,
  });
  final String? workPrinciples;
  final String? biography;
  // специализация терапевта
  final String? additionalSpecializations;
}
