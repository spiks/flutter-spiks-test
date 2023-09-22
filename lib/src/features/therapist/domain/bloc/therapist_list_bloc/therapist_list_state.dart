part of 'therapist_list_bloc.dart';

@freezed
class TherapistListState with _$TherapistListState {
  const factory TherapistListState.loading() = _Loading;

  const factory TherapistListState.fetched({
    required List<Therapist> therapistList,
    @Default(PaginationStatus.fetched) PaginationStatus paginationStatus,
    @Default(UpdatingStatus.updated) UpdatingStatus updatingStatus,
  }) = _Fetched;

  const factory TherapistListState.error(String? msg) = _Error;

}
