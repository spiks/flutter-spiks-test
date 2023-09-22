import 'package:flutter/material.dart';

import 'package:flutter_spiks_test/core/values/colors/color_scheme_m_3.dart';

class AppThemes {
  AppThemes._();

  ///Light theme
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorSchemeM3.lightScheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );

  ///Dark theme
  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorSchemeM3.darkScheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );
}
