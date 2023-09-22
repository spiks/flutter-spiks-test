import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_spiks_test/src/core/network/exceptions/exceptions.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/repositories/therapist_repository.dart';

part 'therapist_details_bloc.freezed.dart';
part 'therapist_details_event.dart';
part 'therapist_details_state.dart';

class TherapistDetailsBloc
    extends Bloc<TherapistDetailsEvent, TherapistDetailsState> {
  TherapistDetailsBloc(this._repository)
      : super(const TherapistDetailsState.loading()) {
    on<_Fetch>(_onFetch);
  }

  final TherapistRepository _repository;

  Future<void> _onFetch(
      _Fetch event, Emitter<TherapistDetailsState> emit) async {
    emit(const _Loading());
    try {
      final TherapistDetail therapist =
          await _repository.getTherapistById(event.id);
      log(therapist.problemsByTypes.toString(), name:'SUCCESS');
      emit(
        _Fetched(
          therapist: therapist,
        ),
      );
    } catch (e) {
      log(e.toString(), name: 'TherapistDetailsBloc _onFetch error');
      if (e is ValidationErrorApiProblem) {
        emit(
          _Error(error: e.message),
        );
        return;
      }
      emit(_Error(
        error: e.toString(),
      ));
    }
  }
}
