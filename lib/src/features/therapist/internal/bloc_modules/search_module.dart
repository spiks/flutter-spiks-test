import '../../domain/bloc/search_bloc/search_bloc.dart';
import '../internal.dart';

class SearchModule {
  static SearchBloc makeSearchBloc() {
    return SearchBloc(TherapistRepositoryModule.getTherapistApiRepository());
  }
}
