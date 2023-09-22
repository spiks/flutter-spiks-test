part of 'therapist_details_bloc.dart';

@freezed
class TherapistDetailsEvent with _$TherapistDetailsEvent {
  const factory TherapistDetailsEvent.fetch(String id) = _Fetch;
}
