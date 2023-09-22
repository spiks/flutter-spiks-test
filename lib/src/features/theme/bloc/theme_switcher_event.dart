part of 'theme_switcher_bloc.dart';

@freezed
class ThemeSwitcherEvent with _$ThemeSwitcherEvent {
  const factory ThemeSwitcherEvent.started() = _Started;
  const factory ThemeSwitcherEvent.toggle(ThemeMode theme) = _Toggle;
}
