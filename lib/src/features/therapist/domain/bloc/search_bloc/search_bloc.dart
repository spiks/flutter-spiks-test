import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/network/exceptions/api_exceptions/api_exception.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/model/pagination.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/values/pagination_status.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/models/time_of_the_day_slot.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/repositories/therapist_repository.dart';

import '../../models/models.dart';

part 'search_bloc.freezed.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._repository) : super(const _UnSearched()) {
    on<_Search>(_onSearch);
    on<_FetchMore>(_onFetchMore, transformer: droppable());
  }

  TherapistFilterRequestModel? _filters;
  final TherapistRepository _repository;
  final List<Therapist> _therapistList = [];
  String? _nextPageCursor;
  String searchQuery = '';

  Pagination get _pagination => Pagination(count: 10, cursor: _nextPageCursor);

  Future<void> _onSearch(_Search event, Emitter emit) async {
    emit(const _Loading());

    if (event.query.isEmpty) {
      emit(const _UnSearched());
      return;
    }

    try {
      searchQuery = event.query;
      _filters ??= TherapistFilterRequestModel(
        age: Age(from: 18, to: 100),
        pagination: _pagination,
        timeOfTheDaySlot: TimeOfTheDaySlot(
          selectedDate: DateTime.now(),
          appointmentTimes: [],
        ),
      );

      final TherapistList list = await _repository.getTherapistList(
        filters: _filters!.copyWith(searchQuery: searchQuery),
      );

      _nextPageCursor = list.nextPageCursor;
      _therapistList.clear();
      _therapistList.addAll(list.therapistList);

      emit(
        _therapistList.isNotEmpty
            ? _Searched(therapists: _therapistList)
            : const _Empty(),
      );
    } catch (e) {
      if (e is ApiException) {
        emit(_Error(error: e.errorBody.type));
        return;
      }
      emit(const _Error());
    }
  }

  Future<void> _onFetchMore(_FetchMore event, Emitter emit) async {
    if (_nextPageCursor == null) {
      emit(
        _Searched(
          therapists: _therapistList,
          status: PaginationStatus.lastPage,
        ),
      );
      return;
    }
    emit(
      _Searched(
        therapists: _therapistList,
        status: PaginationStatus.loading,
      ),
    );
    try {
      final TherapistList list = await _repository.getTherapistList(
        filters: _filters!
            .copyWith(pagination: _pagination, searchQuery: searchQuery),
      );
      _nextPageCursor = list.nextPageCursor;
      _therapistList.addAll(list.therapistList);
      emit(
        _Searched(
          therapists: _therapistList,
          status: list.therapistList.length < 10
              ? PaginationStatus.lastPage
              : PaginationStatus.fetched,
        ),
      );
    } catch (e) {
      emit(
        _Searched(
          therapists: _therapistList,
          status: PaginationStatus.error,
        ),
      );
    }
  }
}
