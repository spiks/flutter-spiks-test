import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/core/themes/font_styles.dart';
import 'package:flutter_spiks_test/core/values/colors/colors.dart';

abstract class ThemeVariants {
  static final light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorSchemeM3.lightScheme,
    extensions: [lightCustomColors],
    fontFamily: FontFamilies.sfProDisplay,

    // backward compatibility
    primaryColor: ColorRefs.keyPrimary,
    primaryColorDark: ColorRefs.tertiary,
    primaryColorLight: ColorRefs.keyPrimary.withOpacity(.8),
    focusColor: ColorRefs.keyPrimary,
    scaffoldBackgroundColor: ColorRefs.primary[99],
    shadowColor: ColorRefs.primary[0],
    splashColor: ColorRefs.keyPrimary,
    disabledColor: ColorRefs.neutral[90],
    splashFactory: InkSplash.splashFactory,
    indicatorColor: ColorRefs.keyPrimary,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    // themes
    textTheme: _getTextThemeColored(ColorSchemeM3.lightScheme.onBackground),
    primaryTextTheme: _getTextThemeColored(ColorSchemeM3.lightScheme.onPrimary),
    iconTheme: IconThemeData(
      color: ColorRefs.primary[10],
    ),
    bottomSheetTheme: BottomSheetThemeData(
      dragHandleColor: ColorSchemeM3.lightScheme.primaryContainer,
      showDragHandle: false,
      backgroundColor: ColorSchemeM3.lightScheme.background,
      // backgroundColor: Colors.transparent,
      modalBackgroundColor: ColorSchemeM3.lightScheme.background,
      // modalBackgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.hardEdge,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorSchemeM3.lightScheme.primaryContainer.withOpacity(.3);
          }
          return ColorSchemeM3.lightScheme.primary;
        }),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return FontStyles(ColorSchemeM3.lightScheme.primary).labelLarge;
          }
          return FontStyles(ColorSchemeM3.lightScheme.onPrimary).labelLarge;
        }),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(vertical: 14),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: ColorSchemeM3.lightScheme.background,
          ),
        ),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(),
    ),

    buttonTheme: const ButtonThemeData(),
    checkboxTheme: const CheckboxThemeData(
      shape: CircleBorder(),
      side: BorderSide.none,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          ColorRefs.neutral[100]?.withOpacity(.2),
        ),
        iconColor: MaterialStatePropertyAll(
          ColorRefs.neutral[100],
        ),
      ),
    ),
    chipTheme: const ChipThemeData(
      shape: StadiumBorder(),
      labelStyle: FontStyles(ColorRefs.primary),
      showCheckmark: false,
      side: BorderSide(
        color: ColorRefs.primary,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 10,
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        side: BorderSide(
          width: 2,
          color: ColorRefs.primary.withOpacity(.2),
        ),
      ),
      style: ListTileStyle.list,
      selectedTileColor: ColorRefs.primary.withOpacity(.2),
      tileColor: ColorRefs.primary[100],
    ),

    // toggleButtonsTheme: const ToggleButtonsThemeData(),
    // pageTransitionsTheme: const PageTransitionsTheme(),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    extensions: [darkCustomColors],
    useMaterial3: true,
    fontFamily: FontFamilies.sfProDisplay,
    colorScheme: ColorSchemeM3.darkScheme,

    /// backward compatibility
    primaryColor: ColorRefs.primary[30],
    primaryColorDark: ColorRefs.tertiary[30],
    primaryColorLight: ColorRefs.primary[30]!.withOpacity(.8),
    focusColor: ColorRefs.primary[30],
    scaffoldBackgroundColor: ColorRefs.neutral[10],
    shadowColor: ColorRefs.primary[0],
    splashColor: ColorRefs.primary[30]!.withOpacity(.2),
    splashFactory: InkSplash.splashFactory,
    indicatorColor: ColorRefs.primary[30],

    /// themes
    textTheme: _getTextThemeColored(ColorSchemeM3.darkScheme.onBackground),
    primaryTextTheme: _getTextThemeColored(ColorSchemeM3.darkScheme.onPrimary),
    primaryIconTheme: const IconThemeData(),
    elevatedButtonTheme: const ElevatedButtonThemeData(),
    outlinedButtonTheme: const OutlinedButtonThemeData(),
    textButtonTheme: const TextButtonThemeData(),
    iconTheme: const IconThemeData(),
    listTileTheme: const ListTileThemeData(),
    toggleButtonsTheme: const ToggleButtonsThemeData(),
    pageTransitionsTheme: const PageTransitionsTheme(),
    buttonTheme: const ButtonThemeData(),
  );

  static TextTheme _getTextThemeColored([Color? color]) => TextTheme(
        displayLarge: FontStyles(color).displayLarge,
        displayMedium: FontStyles(color).displayMedium,
        displaySmall: FontStyles(color).displaySmall,
        headlineMedium: FontStyles(color).headlineMedium,
        headlineSmall: FontStyles(color).headlineSmall,
        titleLarge: FontStyles(color).titleLarge,
        titleMedium: FontStyles(color).titleMedium,
        // titleSmall: FontStyles(color: ColorRes.blue!).titleSmall,
        bodyLarge: FontStyles(color).bodyLarge,
        bodyMedium: FontStyles(color).bodyMedium,
        bodySmall: FontStyles(color).bodySmall,
        labelLarge: FontStyles(color).labelLarge,
        labelMedium: FontStyles(color).labelMedium,
        labelSmall: FontStyles(color).labelSmall,
      );
}

extension BuildContextTheme on BuildContext {
  ColorScheme get scheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;
}
