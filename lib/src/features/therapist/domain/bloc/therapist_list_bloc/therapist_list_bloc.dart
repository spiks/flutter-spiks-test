import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/network/exceptions/api_exceptions/custom_exceptions.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/model/pagination.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/values/pagination_status.dart';
import 'package:flutter_spiks_test/src/core/network/utils/updating/updating.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/repositories/therapist_repository.dart';

part 'therapist_list_bloc.freezed.dart';

part 'therapist_list_event.dart';

part 'therapist_list_state.dart';

class TherapistListBloc extends Bloc<TherapistListEvent, TherapistListState> {
  TherapistListBloc(
    this._repository,
  ) : super(const _Loading()) {
    on<_Fetch>(
      _onFetch,
      transformer: restartable(),
    );
    on<_FetchMore>(_onFetchMore);
    on<_ApplyFilter>(_onApplyFilter);
    on<_AddFilter>(_onAddFilter);
    on<_Update>(_onUpdate);
  }

  final TherapistRepository _repository;
  List<Therapist> _therapistList = [];
  late TherapistFilterRequestModel _appliedFilters;
  TherapistFilterRequestModel? _filterBuffer;
  String? _nextPageCursor;

  Pagination get _pagination => Pagination(count: 10, cursor: _nextPageCursor);

  Future<void> _onAddFilter(_AddFilter event, Emitter emit) async {
    final onlyMyTherapist = _filterBuffer?.onlyMyTherapists;
    _filterBuffer = event.filters;
    if (onlyMyTherapist != _filterBuffer!.onlyMyTherapists) {
      add(const _ApplyFilter());
    }
  }

  Future<void> _onUpdate(_Update event, Emitter emit) async {
    emit(
      _Fetched(
          therapistList: _therapistList,
          updatingStatus: UpdatingStatus.updating),
    );
    _nextPageCursor = null;
    _appliedFilters = _appliedFilters.copyWith(pagination: _pagination);
    add(const _Fetch());
  }

  Future<void> _onFetch(_Fetch event, Emitter<TherapistListState> emit) async {
    try {
      final TherapistList list =
          await _repository.getTherapistList(filters: _appliedFilters);
      _therapistList = list.therapistList;
      _nextPageCursor = list.nextPageCursor;
      _appliedFilters = _appliedFilters.copyWith(pagination: _pagination);
      emit(
        _Fetched(
          therapistList: _therapistList,
          paginationStatus: list.nextPageCursor==null
              ? PaginationStatus.lastPage
              : PaginationStatus.fetched,
        ),
      );
    } catch (e) {
      if (e is ValidationErrorApiProblem) {
        emit(
          _Error(e.message),
        );
        return;
      }
      emit(const _Error(''));
    }
  }

  Future<void> _onFetchMore(
    _FetchMore event,
    Emitter<TherapistListState> emit,
  ) async {
    if (_pagination.cursor == null) {
      emit(
        _Fetched(
          therapistList: _therapistList,
          paginationStatus: PaginationStatus.lastPage,
        ),
      );
      return;
    }
    emit(
      _Fetched(
        therapistList: _therapistList,
        paginationStatus: PaginationStatus.loading,
      ),
    );
    try {
      final TherapistList list =
          await _repository.getTherapistList(filters: _appliedFilters);
      _therapistList.addAll(list.therapistList);
      _nextPageCursor = list.nextPageCursor;
      _appliedFilters = _appliedFilters.copyWith(
        pagination: _pagination,
      );

      emit(
        _Fetched(
          therapistList: _therapistList,
          paginationStatus: list.therapistList.length < 10
              ? PaginationStatus.lastPage
              : PaginationStatus.fetched,
        ),
      );
    } catch (e) {
      emit(
        _Fetched(
          therapistList: _therapistList,
          paginationStatus: PaginationStatus.error,
        ),
      );
    }
  }

  Future<void> _onApplyFilter(_ApplyFilter event, Emitter emit) async {
    emit(const _Loading());
    _therapistList.clear();
    _appliedFilters = _filterBuffer!;
    add(const _Fetch());
  }
}
