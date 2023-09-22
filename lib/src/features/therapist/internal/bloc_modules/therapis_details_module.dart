import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/therapist_details_bloc/therapist_details_bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/therapist_repository_module.dart';

class TherapistDetailsModule {
  static TherapistDetailsBloc makeTherapistDetailsBloc() =>
      TherapistDetailsBloc(
        TherapistRepositoryModule.getTherapistApiRepository(),
      );
}
