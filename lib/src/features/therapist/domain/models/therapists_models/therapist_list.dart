import 'therapist.dart';

class TherapistList {
  final List<Therapist> therapistList;
  final String? nextPageCursor;

  TherapistList({
    required this.therapistList,
    this.nextPageCursor,
  });
}
