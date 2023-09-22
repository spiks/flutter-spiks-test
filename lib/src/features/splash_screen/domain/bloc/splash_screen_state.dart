part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  factory SplashScreenState.loading() = _Loading;

  factory SplashScreenState.nextPageConfigured() = _NextPageConfigured;
}
