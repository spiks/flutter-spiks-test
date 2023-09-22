import 'therapist.dart';
/**
 * Модель списка терапевтов
 */
class TherapistList {
  final List<Therapist> therapistList;
  final String? nextPageCursor;

  TherapistList({
    required this.therapistList,
    this.nextPageCursor,
  });
}
