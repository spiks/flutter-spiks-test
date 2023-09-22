import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/filter_bloc/filter_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/therapist_repository_module.dart';

class FilterModule {
  static FilterBloc makeFilterBloc() =>
      FilterBloc(TherapistRepositoryModule.getTherapistApiRepository())
        ..add(
          const FilterEvent.fetchInitialFilters(),
        );
}
