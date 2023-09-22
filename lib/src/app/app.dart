import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/features/theme/theme.dart';
import 'package:flutter_spiks_test/src/navigation/navigation.dart';
// import 'package:flutter_spiks_te/src/values/values.dart';
import 'package:overlay_support/overlay_support.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeSwitcherBloc(),
      child: BlocBuilder<ThemeSwitcherBloc, ThemeMode>(
        /// recommended by material 3 theme builder
        /// (working only on android, macos, windows and linux)
        /// for ios it uses default
        builder: (context, state) => DynamicColorBuilder(
            builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
              // ColorScheme lightScheme;
              // ColorScheme darkScheme;
              //
              // if (lightDynamic != null && darkDynamic != null) {
              //   lightScheme = lightDynamic.harmonized();
              //   lightCustomColors = lightCustomColors.harmonized(lightScheme);
              //
              //   // Repeat for the dark color scheme.
              //   darkScheme = darkDynamic.harmonized();
              //   darkCustomColors = darkCustomColors.harmonized(darkScheme);
              // } else {
              //   // Otherwise, use fallback schemes.
              //   lightScheme = ThemeVariants.light.colorScheme;
              //   darkScheme = ThemeVariants.dark.colorScheme;
              // }
              SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
              return OverlaySupport.global(
                child: MaterialApp.router(
                  routerConfig: _appRouter.config(),
                  // theme: ThemeVariants.light,
                  // darkTheme: ThemeVariants.dark,
                  localizationsDelegates: const [
                    L10n.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  /// localization auto-fetched from platform
                  supportedLocales: const [
                    Locale('ru'), // Russian
                    Locale('en'), // English
                  ],
                  // darkTheme: ThemeVariants.dark,
                  // themeMode: context.watch<ThemeSwitcherBloc>().state,
                ),
              );
            },
      ),
      ));
  }
}
