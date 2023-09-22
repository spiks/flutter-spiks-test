part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.error({String? error}) = _Error;

  const factory SearchState.searched({
    required List<Therapist> therapists,
    @Default(PaginationStatus.fetched) PaginationStatus status,
  }) = _Searched;

  const factory SearchState.unSearched() = _UnSearched;

  const factory SearchState.empty() = _Empty;

  const factory SearchState.loading() = _Loading;
}
