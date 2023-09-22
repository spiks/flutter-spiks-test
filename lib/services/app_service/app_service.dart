abstract class AppService {
  String get locale;
  bool get isDarkMode;

  Future<void> setLocale({
    required String locale,
  });

  Future<void> setIsDarkMode({
    required bool darkMode,
  });
}
