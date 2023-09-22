part of 'therapist_list_bloc.dart';

@freezed
class TherapistListEvent with _$TherapistListEvent {
  const factory TherapistListEvent.fetch() = _Fetch;

  const factory TherapistListEvent.update() = _Update;

  const factory TherapistListEvent.addFilter({
    required TherapistFilterRequestModel filters,
  }) = _AddFilter;


  const factory TherapistListEvent.applyFilter() = _ApplyFilter;

  const factory TherapistListEvent.fetchMore() = _FetchMore;
}
