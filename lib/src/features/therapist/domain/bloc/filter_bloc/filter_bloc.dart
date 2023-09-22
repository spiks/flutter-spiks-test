import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/network/exceptions/api_exceptions/api_exception.dart';
import 'package:flutter_spiks_test/src/core/network/utils/pagination/model/pagination.dart';
import 'package:flutter_spiks_test/src/core/values/values.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/helpers/appointment_helpers.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/models/time_of_the_day_slot.dart';
import 'package:flutter_spiks_test/src/features/appointment/domain/values/appointment_time.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/therapist_additional_data/therapist_problems_by_group.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/repositories/therapist_repository.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/values/values.dart';

part 'filter_bloc.freezed.dart';

part 'filter_event.dart';

part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(this._repository) : super(const _Loading()) {
    on<_FetchInitialFilters>(_onFetchInitialFilters);
    on<_DropFilter>(_onDropFilter);
    on<_ChangePrice>(_onChangePrice);
    on<_ChangeAppointmentTime>(_onChangeAppointmentTime);
    on<_ChangeDate>(_onChangeDate);
    on<_ChangeTherapistGender>(_onChangeTherapistGender);
    on<_ChangeAge>(_onChangeAge);
    on<_ChangeQuestionnaireType>(_onChangeQuestionnaireType);
    on<_ChangeOnlyMyTherapist>(_onChangeOnlyMyTherapist);
  }

  late final StreamSubscription? _timeSubscription;
  late final TherapistInitialFilter _initialFilters;
  late TherapistFilterRequestModel _filters;
  final TherapistRepository _repository;

  late DateTime _selectedDate;

  late TimeOfTheDaySlot _currentSlot;

  bool get _filtersApplied =>
      _filters.age.from != _initialFilters.age.from ||
      _filters.age.to != _initialFilters.age.to ||
      _filters.timeOfTheDaySlot.selectedItems.isNotEmpty ||
      (_filters.price != null && _filters.price!.isNotEmpty) ||
      _filters.chooseBasedOnQuestionnaireType != QuestionnaireType.all ||
      _filters.gender != Gender.other ||
      _filters.onlyMyTherapists;

  Future<void> _onFetchInitialFilters(
    _FetchInitialFilters event,
    Emitter emit,
  ) async {
    emit(const _Loading());
    try {
      _initialFilters = await _repository.getFiltersToSearchForTherapists();
      _selectedDate = DateTime.now();
      _currentSlot = AppointmentHelpers.getTimeOfTheDayFromDate(_selectedDate);
      _timeSubscription = configureTimer();
      _filters = TherapistFilterRequestModel(
        age: _initialFilters.age,
        pagination: Pagination(count: 10),
        timeOfTheDaySlot: _currentSlot,
      );
      emit(
        _FiltersFetched(
          filters: _filters,
        ),
      );
      emitChanges(emit);
    } catch (e, st) {
      log(
        'error',
        stackTrace: st,
        error: e,
      );
      if (e is ApiException) {
        emit(_Error(code: e.errorBody.type));
        return;
      }
      emit(const _Error(code: ''));
    }
  }

  Future<void> _onDropFilter(
    _DropFilter event,
    Emitter emit,
  ) async {
    _selectedDate = DateTime.now();
    _currentSlot = AppointmentHelpers.getTimeOfTheDayFromDate(_selectedDate);

    _filters = TherapistFilterRequestModel(
      age: _initialFilters.age,
      pagination: Pagination(count: 10),
      timeOfTheDaySlot: _currentSlot,
    );

    emitChanges(emit);
  }

  Future<void> _onChangePrice(_ChangePrice event, Emitter emit) async {
    final prices = _filters.price ?? [];

    if (!prices.contains(event.price)) {
      prices.add(event.price);

      _filters = _filters.copyWith(price: prices);
    } else {
      prices.remove(event.price);
    }
    _filters = _filters.copyWith(price: prices);
    emitChanges(emit);
  }

  Future<void> _onChangeAppointmentTime(
    _ChangeAppointmentTime event,
    Emitter emit,
  ) async {
    final slotChecker =
        AppointmentHelpers.getTimeOfTheDayFromDate(_currentSlot.selectedDate);
    final items = List<AppointmentTime>.from(
      _filters.timeOfTheDaySlot.selectedItems,
    );
    if (_filters.timeOfTheDaySlot.selectedItems.contains(event.time)) {
      items.remove(event.time);
    } else {
      items.add(event.time);
    }

    final time = slotChecker.copyWith(selectedItems: items);
    _filters = _filters.copyWith(timeOfTheDaySlot: time);
    emitChanges(emit);
  }

  Future<void> _onChangeDate(_ChangeDate event, Emitter emit) async {
    final date = (event.date.month == DateTime.now().month &&
            event.date.day == DateTime.now().day)
        ? DateTime.now()
        : event.date;
    _currentSlot = AppointmentHelpers.getTimeOfTheDayFromDate(date);
    _filters = _filters.copyWith(timeOfTheDaySlot: _currentSlot);
    emitChanges(emit);
  }

  Future<void> _onChangeTherapistGender(
    _ChangeTherapistGender event,
    Emitter emit,
  ) async {
    final gender =
        _filters.gender == event.gender ? Gender.other : event.gender;
    _filters = _filters.copyWith(
      gender: gender,
    );
    emitChanges(emit);
  }

  Future<void> _onChangeAge(_ChangeAge event, Emitter emit) async {
    _filters = _filters.copyWith(age: event.age);
    emitChanges(emit);
  }

  Future<void> _onChangeQuestionnaireType(
    _ChangeQuestionnaireType event,
    Emitter emit,
  ) async {
    final questionnaireType =
        _filters.chooseBasedOnQuestionnaireType == event.questionnaireType
            ? QuestionnaireType.all
            : event.questionnaireType;
    _filters = _filters.copyWith(
      chooseBasedOnQuestionnaireType: questionnaireType,
    );
    emitChanges(emit);
  }

  Future<void> _onChangeOnlyMyTherapist(
    _ChangeOnlyMyTherapist event,
    Emitter emit,
  ) async {
    _filters = _filters.copyWith(onlyMyTherapists: event.onlyMyTherapists);
    emitChanges(emit);
  }

  void emitChanges(Emitter emit) {
    emit(
      _FilterChanged(
        initialFilter: _initialFilters,
        filters: _filters,
        filterStatus:
            _filtersApplied ? FilterStatus.applied : FilterStatus.notApplied,
      ),
    );
  }

  StreamSubscription<int> configureTimer() {
    return Stream<int>.periodic(const Duration(seconds: 1), (count) => count)
        .listen((event) {
      if (_selectedDate.isSameDay(DateTime.now()) &&
          _selectedDate.add(Duration(seconds: event)).minute % 30 == 0) {
        _selectedDate = DateTime.now();
        add(_ChangeDate(_selectedDate));
      }
    });
  }

  @override
  Future<void> close() {
    if (_timeSubscription != null) _timeSubscription!.cancel();
    return super.close();
  }
}
