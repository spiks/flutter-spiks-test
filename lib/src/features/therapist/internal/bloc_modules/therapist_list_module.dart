import 'package:flutter_spiks_test/src/features/therapist/internal/therapist_repository_module.dart';

import '../../domain/bloc/therapist_list_bloc/therapist_list_bloc.dart';

class TherapistListModule {
  static TherapistListBloc makeTherapistListBloc() => TherapistListBloc(
        TherapistRepositoryModule.getTherapistApiRepository(),
      );
}
