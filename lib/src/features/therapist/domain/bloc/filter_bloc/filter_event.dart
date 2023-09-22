part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.fetchInitialFilters() = _FetchInitialFilters;

  const factory FilterEvent.changeAge(Age age) = _ChangeAge;

  const factory FilterEvent.changeDate(DateTime date) = _ChangeDate;

  const factory FilterEvent.changeAppointmentTime(AppointmentTime time) =
      _ChangeAppointmentTime;

  const factory FilterEvent.changeQuestionnaireType(
    QuestionnaireType questionnaireType,
  ) = _ChangeQuestionnaireType;

  const factory FilterEvent.changeOnlyMyTherapist({required bool onlyMyTherapists}) =
      _ChangeOnlyMyTherapist;

  const factory FilterEvent.changeTherapistGender(Gender? gender) =
      _ChangeTherapistGender;

  ///Price events
  const factory FilterEvent.changePrice(TherapistPriceOptions price) =
      _ChangePrice;

  ///SpecializationEvents
  const factory FilterEvent.changeSpecialization(
    TherapistProblemsByGroup specialization,
  ) = _ChangeSpecialization;

  const factory FilterEvent.dropFilter() = _DropFilter;
}
