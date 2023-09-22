part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({required String query}) = _Search;
  const factory SearchEvent.fetchMore() = _FetchMore;
}
