// ignore_for_file: unused_element
// ignore_for_file: unused_field

import 'dart:math';

import 'package:flutter/material.dart';

class GradientResources {
  /// background: linear-gradient(180deg, #E5F6FF 0%, #D9F2FF 100%);
  static const lightBackground = LinearGradient(
    colors: [
      Color(0xFFe5f6ff),
      Color(0xFFd9f2ff),
    ],
    transform: GradientRotation(180 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(180deg, #FF458A 0%, #DC0052 100%);
  static const red = LinearGradient(
    colors: [
      Color(0xFFFF458A),
      Color(0xFFDC0052),
    ],
    transform: GradientRotation(180 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(304.77deg, #FF842B 1.74%, #FFC738 98.92%);
  static const orange = LinearGradient(
    colors: [
      Color(0xFFFF842B),
      Color(0xFFFFC738),
    ],
    transform: GradientRotation(304.77 / 180 * pi),
    stops: [
      0.0174,
      0.9892,
    ],
  );

  /// background: linear-gradient(141.82deg, #78D59E -1.27%, #38AB90 100.22%);
  static const green = LinearGradient(
    colors: [
      Color(0xFF78D59E),
      Color(0xFF38AB90),
    ],
    transform: GradientRotation(141.82 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(90deg, #6BE1E0 0%, #38B7FF 100%);
  static const primary1 = LinearGradient(
    colors: [
      Color(0xFF6BE1E0),
      Color(0xFF38B7FF),
    ],
    transform: GradientRotation(90 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(90deg, #38B7FF 0%, #6BFFE0 100%);
  static const primary1Reversed = LinearGradient(
    colors: [
      Color(0xFF38B7FF),
      Color(0xFF6BFFE0),
    ],
    transform: GradientRotation(90 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(83.75deg, #6BE1E0 -77.99%, #38B7FF 100%);
  static const primary2 = LinearGradient(
    colors: [
      Color(0xFF6BE1E0),
      Color(0xFF38B7FF),
    ],
    transform: GradientRotation(83.75 / 180 * pi),
    stops: [
      -77.99 / 100,
      1,
    ],
  );

  /// background: linear-gradient(112.23deg, #6BE1E0 0.89%, #38B7FF 99.69%);
  static const primary3 = LinearGradient(
    colors: [
      Color(0xFF6BE1E0),
      Color(0xFF38B7FF),
    ],
    transform: GradientRotation(112.23 / 180 * pi),
    stops: [
      0.89 / 100,
      99.69 / 100,
    ],
  );

  /// background: linear-gradient(136.9deg, #F34384 1.02%, #4510DB 115.13%);
  static const accent1 = LinearGradient(
    colors: [
      Color(0xFFF34384),
      Color(0xFF4510DB),
    ],
    transform: GradientRotation(136.9 / 180 * pi),
    stops: [
      1.02 / 100,
      115.13 / 100,
    ],
  );

  /// background: linear-gradient(136.9deg, #3870FF 1.02%, #FF99BF 115.13%);
  static const accent2 = LinearGradient(
    colors: [
      Color(0xFF3870FF),
      Color(0xFFFF99BF),
    ],
    transform: GradientRotation(136.9 / 180 * pi),
    stops: [
      1.02 / 100,
      115.13 / 100,
    ],
  );

  /// background: linear-gradient(90deg, #C2E9FF 0%, #F5FFFD 100%);
  static const primaryLightBlue = LinearGradient(
    colors: [
      Color(0xFFC2E9FF),
      Color(0xFFF5FFFD),
    ],
    transform: GradientRotation(180 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );
}

abstract class _Surface {
  /// background: linear-gradient(0deg, rgba(0, 100, 146, 0.05), rgba(0, 100, 146, 0.05)), #FCFCFF;
  /// make background of widget to FCFCFF (surface color)
  static const lightSurface1 = LinearGradient(
    colors: [
      Color.fromRGBO(0, 100, 146, 0.05),
      Color.fromRGBO(0, 100, 146, 0.05),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(0, 100, 146, 0.08), rgba(0, 100, 146, 0.08)), #FCFCFF;
  /// make background of widget to FCFCFF (surface color)
  static const lightSurface2 = LinearGradient(
    colors: [
      Color.fromRGBO(0, 100, 146, 0.08),
      Color.fromRGBO(0, 100, 146, 0.08),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(0, 100, 146, 0.11), rgba(0, 100, 146, 0.11)), #FCFCFF;
  /// make background of widget to FCFCFF (surface color)
  static const lightSurface3 = LinearGradient(
    colors: [
      Color.fromRGBO(0, 100, 146, 0.11),
      Color.fromRGBO(0, 100, 146, 0.11),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(0, 100, 146, 0.12), rgba(0, 100, 146, 0.12)), #FCFCFF;
  /// make background of widget to FCFCFF (surface color)
  static const lightSurface4 = LinearGradient(
    colors: [
      Color.fromRGBO(0, 100, 146, 0.12),
      Color.fromRGBO(0, 100, 146, 0.12),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(0, 100, 146, 0.14), rgba(0, 100, 146, 0.14)), #FCFCFF;
  /// make background surface color
  static const lightSurface5 = LinearGradient(
    colors: [
      Color.fromRGBO(0, 100, 146, 0.14),
      Color.fromRGBO(0, 100, 146, 0.14),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(139, 206, 255, 0.05), rgba(139, 206, 255, 0.05)), #1A1C1E;
  /// make background surface color
  static const darkSurface1 = LinearGradient(
    colors: [
      Color.fromRGBO(139, 206, 255, 0.05),
      Color.fromRGBO(139, 206, 255, 0.05),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(139, 206, 255, 0.08), rgba(139, 206, 255, 0.08)), #1A1C1E;
  /// make background surface color
  static const darkSurface2 = LinearGradient(
    colors: [
      Color.fromRGBO(139, 206, 255, 0.08),
      Color.fromRGBO(139, 206, 255, 0.08),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(139, 206, 255, 0.11), rgba(139, 206, 255, 0.11)), #1A1C1E;
  /// make background surface color
  static const darkSurface3 = LinearGradient(
    colors: [
      Color.fromRGBO(139, 206, 255, 0.11),
      Color.fromRGBO(139, 206, 255, 0.11),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(139, 206, 255, 0.12), rgba(139, 206, 255, 0.12)), #1A1C1E;
  /// make background surface color
  static const darkSurface4 = LinearGradient(
    colors: [
      Color.fromRGBO(139, 206, 255, 0.12),
      Color.fromRGBO(139, 206, 255, 0.12),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );

  /// background: linear-gradient(0deg, rgba(139, 206, 255, 0.14), rgba(139, 206, 255, 0.14)), #1A1C1E;
  /// make background surface color
  static const darkSurface5 = LinearGradient(
    colors: [
      Color.fromRGBO(139, 206, 255, 0.14),
      Color.fromRGBO(139, 206, 255, 0.14),
    ],
    transform: GradientRotation(0 / 180 * pi),
    stops: [
      0,
      1,
    ],
  );
}
