import '../../values/main_specialization.dart';
import '../therapist_additional_data/employments.dart';

class Therapist {
  final String id;
  final String name;
  final String surname;
  final String? avatar;
  final List<Employment> employments;
  final MainSpecialization? mainSpecialization;
  final int experience;
  final int minCost;

  Therapist({
    required this.id,
    required this.name,
    required this.surname,
    this.mainSpecialization,
    this.avatar,
    required this.employments,
    required this.experience,
    required this.minCost,
  });
}
