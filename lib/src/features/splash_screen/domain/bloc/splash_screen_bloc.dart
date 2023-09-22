
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_event.dart';

part 'splash_screen_state.dart';

part 'splash_screen_bloc.freezed.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc()
      : super(_Loading()) {
    on<_GetPath>(_onGetPath);
  }

  Future<void> _onGetPath(
    _GetPath event,
    Emitter<SplashScreenState> emit,
  ) async {
    emit(
      _NextPageConfigured(),
    );
  }
}
