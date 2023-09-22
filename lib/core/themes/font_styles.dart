// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/core/values/colors/colors.dart';

class FontStyles extends TextStyle {
  const FontStyles([
    this.color,
  ]);

  @override
  final Color? color;

  Color get _color => color ?? ColorRefs.neutral[25]!;

  TextStyle? lerp(FontStyles? other, double t) {
    return TextStyle.lerp(this, other, t);
  }

  /// 48px | 100% | w700
  TextStyle get displayLarge => copyWith(
        height: FontLineHeights.displayLarge,
        fontSize: FontSizes.displayLarge,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 36px | 100% | w700
  TextStyle get displayMedium => copyWith(
        height: FontLineHeights.displayMedium,
        fontSize: FontSizes.displayMedium,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 32px | 100% | w700
  TextStyle get displaySmall => copyWith(
        height: FontLineHeights.displaySmall,
        fontSize: FontSizes.displaySmall,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 24px | 120% | w700
  TextStyle get headlineMedium => copyWith(
        height: FontLineHeights.headlineMedium,
        fontSize: FontSizes.headlineMedium,
        fontFamily: FontFamilies.raleway,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 20px | 120% | w700
  TextStyle get headlineSmall => copyWith(
        height: FontLineHeights.headlineSmall,
        fontSize: FontSizes.headlineSmall,
        fontFamily: FontFamilies.raleway,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 18px | 120% | w700
  TextStyle get titleLarge => copyWith(
        height: FontLineHeights.titleLarge,
        fontSize: FontSizes.titleLarge,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w700,
        color: _color,
      );

  /// 16px | 120% | w600
  TextStyle get titleMedium => copyWith(
        height: FontLineHeights.titleMedium,
        fontSize: FontSizes.titleMedium,
        fontFamily: FontFamilies.raleway,
        fontWeight: FontWeight.w600,
        color: _color,
      );

  /// 14px | 140% | w400
  TextStyle get bodySmall => copyWith(
        height: FontLineHeights.bodySmall,
        fontSize: FontSizes.bodySmall,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w400,
        color: _color,
      );

  /// 18px | 140% | w500
  TextStyle get bodyLarge => copyWith(
        height: FontLineHeights.bodyLarge,
        fontSize: FontSizes.bodyLarge,
        fontFamily: FontFamilies.raleway,
        fontWeight: FontWeight.w500,
        color: _color,
      );

  /// 16px | 140% | w500
  TextStyle get bodyMedium => copyWith(
        height: FontLineHeights.bodyMedium,
        fontSize: FontSizes.bodyMedium,
        fontFamily: FontFamilies.raleway,
        fontWeight: FontWeight.w500,
        color: _color,
      );

  /// 18px | 120% | w500
  TextStyle get labelLarge => copyWith(
        height: FontLineHeights.labelLarge,
        fontSize: FontSizes.labelLarge,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w500,
        color: _color,
      );

  /// 16px | 120% | w500
  TextStyle get labelMedium => copyWith(
        height: FontLineHeights.labelMedium,
        fontSize: FontSizes.labelMedium,
        fontFamily: FontFamilies.sfProDisplay,
        fontWeight: FontWeight.w500,
        color: _color,
      );

  /// 12px | 120% | w500
  TextStyle get labelSmall => copyWith(
        height: FontLineHeights.labelSmall,
        fontSize: FontSizes.labelSmall,
        fontFamily: FontFamilies.sfProDisplay,

        /// also w400
        fontWeight: FontWeight.w500,

        color: _color,
      );
}
