import 'therapist.dart';

/**
 * Расширенная модель терапевта (Therapist)
 **/

class TherapistDetail extends Therapist {
  final String? workPrinciples;
  final String? biography;
  final String? videoPresentationUrl;
  final String? additionalSpecializations;

  TherapistDetail({
    required super.id,
    required super.name,
    required super.surname,
    super.avatar,
    required super.experience,
    required this.workPrinciples,
    required this.biography,
    required this.videoPresentationUrl,
    this.additionalSpecializations,
  });
}
