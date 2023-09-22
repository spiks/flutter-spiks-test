import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/network/utils/pagination/model/pagination.dart';
import '../../../../../../appointment/data/api/model/api_appointment_slots/api_appointment_slots.dart';
import '../../therapist_filter/therapist_filter.dart';

part 'api_therapist_list_request_model.g.dart';
@JsonSerializable(explicitToJson: true)
class ApiTherapistListRequestModel {
  final ApiAge age;
  final List<ApiAppointmentSlots>? appointmentSlots;
  final String? chooseBasedOnQuestionnaireType;
  final String? gender;
  final bool onlyMyTherapists;
  final Pagination pagination;
  final List<String>? prices;
  final String? searchQuery;
  final String? mainSpecialization;
  final List<String>? problemIds;

  ApiTherapistListRequestModel({
    required this.age,
    this.appointmentSlots,
    this.chooseBasedOnQuestionnaireType,
    this.gender,
    required this.onlyMyTherapists,
    required this.pagination,
    this.prices,
    this.searchQuery,
    this.mainSpecialization,
    this.problemIds,
  });

  factory ApiTherapistListRequestModel.fromJson(Map<String, Object?> json) =>
      _$ApiTherapistListRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTherapistListRequestModelToJson(this);
}
