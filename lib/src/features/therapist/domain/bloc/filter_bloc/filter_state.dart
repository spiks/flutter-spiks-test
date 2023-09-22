part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.filterChanged({
    required TherapistInitialFilter initialFilter,
    required TherapistFilterRequestModel filters,
    @Default(FilterStatus.notApplied) FilterStatus filterStatus,
  }) = _FilterChanged;

  const factory FilterState.filtersFetched({
    required TherapistFilterRequestModel filters,
  }) = _FiltersFetched;

  const factory FilterState.loading() = _Loading;

  const factory FilterState.error({required String code}) = _Error;
}
