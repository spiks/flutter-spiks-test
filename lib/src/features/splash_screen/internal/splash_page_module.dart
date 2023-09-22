import '../domain/bloc/splash_screen_bloc.dart';

class SplashPageModule {
  static SplashScreenBloc makeSplashScreenBloc() {
    return SplashScreenBloc()..add(SplashScreenEvent.getPath());
  }
}
