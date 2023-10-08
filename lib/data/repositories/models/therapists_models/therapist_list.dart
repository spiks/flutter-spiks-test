import 'package:flutter_spiks_test/data/repositories/models/therapists_models/therapist.dart';

/// Модель списка терапевтов
class TherapistList {
  TherapistList({
    required this.therapistList,
    this.nextPageCursor,
  });

  // Список
  final List<Therapist> therapistList;
  // Курсор, указывающий на положение текущей пачки в списке
  final String? nextPageCursor;
}
