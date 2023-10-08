/// Модель терапевта
/// Расширьте при необходимости

class Therapist {
  final String id;
  final String name;
  final String surname;
  // avatar url
  final String? avatar;
  // главная специализация
  final String? mainSpecialization;
  // годы опыта
  final int experience;

  Therapist({
    required this.id,
    required this.name,
    required this.surname,
    required this.experience,
    this.avatar,
    this.mainSpecialization,
  });
}
