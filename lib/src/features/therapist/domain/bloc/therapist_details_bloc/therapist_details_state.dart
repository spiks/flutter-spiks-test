part of 'therapist_details_bloc.dart';

@freezed
class TherapistDetailsState with _$TherapistDetailsState {
  const factory TherapistDetailsState.loading() = _Loading;
  const factory TherapistDetailsState.fetched({required TherapistDetail therapist}) = _Fetched;
  const factory TherapistDetailsState.error({required String error}) = _Error;
}
