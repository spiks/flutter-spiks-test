import 'package:flutter_spiks_test/src/core/network/utils/pagination/model/pagination.dart';
import 'package:flutter_spiks_test/src/core/values/values.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/models/appointment_slots/appointment_slots.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/models/time_of_the_day_slot.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/values/therapist_price_options.dart';

class TherapistFilterRequestModel {
  final Age age;
  final QuestionnaireType chooseBasedOnQuestionnaireType;
  final bool onlyMyTherapists;
  final Pagination pagination;
  final Gender gender;
  final List<TherapistPriceOptions>? price;
  final String? searchQuery;
  final String? mainSpecialization;
  final List<String>? problemIds;
  final TimeOfTheDaySlot timeOfTheDaySlot;

  const TherapistFilterRequestModel({
    required this.age,
    this.chooseBasedOnQuestionnaireType = QuestionnaireType.all,
    this.onlyMyTherapists = false,
    required this.pagination,
    this.price,
    this.gender = Gender.other,
    this.searchQuery,
    this.problemIds,
    this.mainSpecialization,
    required this.timeOfTheDaySlot,
  });

  TherapistFilterRequestModel copyWith({
    Age? age,
    List<AppointmentSlots>? appointmentSlots,
    QuestionnaireType? chooseBasedOnQuestionnaireType,
    bool? onlyMyTherapists,
    Pagination? pagination,
    Gender? gender,
    List<TherapistPriceOptions>? price,
    String? searchQuery,
    String? mainSpecialization,
    List<String>? problemIds,
    TimeOfTheDaySlot? timeOfTheDaySlot,
  }) {
    return TherapistFilterRequestModel(
      age: age ?? this.age,
      chooseBasedOnQuestionnaireType:
          chooseBasedOnQuestionnaireType ?? this.chooseBasedOnQuestionnaireType,
      onlyMyTherapists: onlyMyTherapists ?? this.onlyMyTherapists,
      pagination: pagination ?? this.pagination,
      gender: gender ?? this.gender,
      price: price ?? this.price,
      searchQuery: searchQuery ?? this.searchQuery,
      problemIds: problemIds ?? this.problemIds,
      mainSpecialization: mainSpecialization ?? this.mainSpecialization,
      timeOfTheDaySlot: timeOfTheDaySlot ?? this.timeOfTheDaySlot,
    );
  }
}
