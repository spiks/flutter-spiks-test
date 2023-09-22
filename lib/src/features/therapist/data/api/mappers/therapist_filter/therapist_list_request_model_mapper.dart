import 'package:flutter_spiks_test/src/core/values/values.dart';
import 'package:flutter_spiks_test/src/features/appointment/data/api/mappers/appointment_slots_mapper.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/helpers/appointment_helpers.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/mappers/mappers.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/model.dart';
import 'package:flutter_spiks_test/src/features/therapist/data/api/model/request/request.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/therapist_filter/filters/therapist_filter_request_model.dart';

class TherapistListRequestModelMapper {
  static ApiTherapistListRequestModel toApi(TherapistFilterRequestModel model) {
    return ApiTherapistListRequestModel(
      age: AgeMapper.toApi(model.age),
      onlyMyTherapists: model.onlyMyTherapists,
      pagination: model.pagination,
      appointmentSlots: AppointmentSlotsMapper.listToListApi(
        AppointmentHelpers.getAppointmentSlotsMyAppointmentTime(
          model.timeOfTheDaySlot.selectedDate,
          model.timeOfTheDaySlot.selectedItems,
        ),
      ),
      chooseBasedOnQuestionnaireType:
          model.chooseBasedOnQuestionnaireType == QuestionnaireType.all
              ? null
              : model.chooseBasedOnQuestionnaireType.name,
      gender: model.gender == Gender.other ? null : model.gender.name,
      prices: (model.price == null || (model.price?.isEmpty ?? true))
          ? null
          : model.price!.map((e) => e.name).toList(),
      searchQuery: model.searchQuery,
      problemIds: (model.problemIds?.isEmpty ?? true)
          ? null
          : model.problemIds,
      mainSpecialization: model.mainSpecialization,
    );
  }
}
