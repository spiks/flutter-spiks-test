import 'package:flutter/material.dart';

abstract class ColorRefs {
  static const keyPrimary = Color.fromRGBO(56, 183, 255, 1);
  static const keySecondary = Color.fromRGBO(101, 247, 228, 1);
  static const keyTertiary = Color.fromRGBO(31, 102, 143, 1);
  static const keyNeutral = Color.fromRGBO(31, 102, 143, 1);

  /// [0..100]
  static const MaterialColor primary = MaterialColor(
    0xFF007EB7,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(0, 19, 32, 1),
      10: Color.fromRGBO(0, 30, 47, 1),
      20: Color.fromRGBO(0, 52, 78, 1),
      25: Color.fromRGBO(0, 63, 94, 1),
      30: Color.fromRGBO(0, 75, 111, 1),
      35: Color.fromRGBO(0, 88, 128, 1),
      40: Color.fromRGBO(0, 100, 146, 1),
      50: Color.fromRGBO(0, 126, 183, 1),
      60: Color.fromRGBO(0, 153, 221, 1),
      70: Color.fromRGBO(52, 181, 253, 1),
      80: Color.fromRGBO(139, 206, 255, 1),
      90: Color.fromRGBO(201, 230, 255, 1),
      95: Color.fromRGBO(230, 242, 255, 1),
      98: Color.fromRGBO(246, 250, 255, 1),
      99: Color.fromRGBO(252, 252, 255, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  /// [0..100]
  static const MaterialColor secondary = MaterialColor(
    0xFF008679,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(0, 20, 17, 1),
      10: Color.fromRGBO(0, 32, 28, 1),
      20: Color.fromRGBO(0, 55, 49, 1),
      25: Color.fromRGBO(0, 68, 61, 1),
      30: Color.fromRGBO(0, 80, 72, 1),
      35: Color.fromRGBO(0, 93, 84, 1),
      40: Color.fromRGBO(0, 106, 96, 1),
      50: Color.fromRGBO(0, 134, 121, 1),
      60: Color.fromRGBO(0, 162, 148, 1),
      70: Color.fromRGBO(3, 192, 175, 1),
      80: Color.fromRGBO(67, 220, 202, 1),
      90: Color.fromRGBO(103, 249, 230, 1),
      95: Color.fromRGBO(180, 255, 242, 1),
      98: Color.fromRGBO(228, 255, 249, 1),
      99: Color.fromRGBO(242, 255, 251, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  /// [0..100]
  static const MaterialColor tertiary = MaterialColor(
    0xFF007EB6,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(0, 19, 32, 1),
      10: Color.fromRGBO(0, 30, 47, 1),
      20: Color.fromRGBO(0, 52, 78, 1),
      25: Color.fromRGBO(0, 63, 94, 1),
      30: Color.fromRGBO(0, 75, 111, 1),
      35: Color.fromRGBO(0, 88, 128, 1),
      40: Color.fromRGBO(0, 100, 146, 1),
      50: Color.fromRGBO(0, 126, 182, 1),
      60: Color.fromRGBO(55, 153, 210, 1),
      70: Color.fromRGBO(88, 179, 239, 1),
      80: Color.fromRGBO(139, 206, 255, 1),
      90: Color.fromRGBO(201, 230, 255, 1),
      95: Color.fromRGBO(230, 242, 255, 1),
      98: Color.fromRGBO(246, 250, 255, 1),
      99: Color.fromRGBO(252, 252, 255, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  /// [0..100]
  static const MaterialColor error = MaterialColor(
    0xFFDE3730,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(45, 0, 1, 1),
      10: Color.fromRGBO(65, 0, 2, 1),
      20: Color.fromRGBO(105, 0, 5, 1),
      25: Color.fromRGBO(126, 0, 7, 1),
      30: Color.fromRGBO(147, 0, 10, 1),
      35: Color.fromRGBO(168, 7, 16, 1),
      40: Color.fromRGBO(186, 26, 26, 1),
      50: Color.fromRGBO(222, 55, 48, 1),
      60: Color.fromRGBO(255, 84, 73, 1),
      70: Color.fromRGBO(255, 137, 125, 1),
      80: Color.fromRGBO(255, 180, 171, 1),
      90: Color.fromRGBO(255, 218, 214, 1),
      95: Color.fromRGBO(255, 237, 234, 1),
      98: Color.fromRGBO(255, 248, 247, 1),
      99: Color.fromRGBO(255, 251, 255, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  /// [0..100]
  static const MaterialColor neutral = MaterialColor(
    0xFF75777A,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(15, 17, 19, 1),
      10: Color.fromRGBO(26, 28, 30, 1),
      20: Color.fromRGBO(46, 49, 51, 1),
      25: Color.fromRGBO(57, 60, 62, 1),
      30: Color.fromRGBO(69, 71, 73, 1),
      35: Color.fromRGBO(81, 83, 85, 1),
      40: Color.fromRGBO(93, 94, 97, 1),
      50: Color.fromRGBO(117, 119, 122, 1),
      60: Color.fromRGBO(143, 145, 147, 1),
      70: Color.fromRGBO(170, 171, 174, 1),
      80: Color.fromRGBO(197, 198, 201, 1),
      90: Color.fromRGBO(226, 226, 229, 1),
      95: Color.fromRGBO(240, 240, 243, 1),
      98: Color.fromRGBO(249, 249, 252, 1),
      99: Color.fromRGBO(252, 252, 255, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );

  /// [0..100]
  static const MaterialColor neutralVariant = MaterialColor(
    0xFF75777A,
    <int, Color>{
      0: Color.fromRGBO(0, 0, 0, 1),
      5: Color.fromRGBO(11, 18, 23, 1),
      10: Color.fromRGBO(22, 28, 33, 1),
      20: Color.fromRGBO(43, 49, 55, 1),
      25: Color.fromRGBO(54, 60, 66, 1),
      30: Color.fromRGBO(65, 71, 77, 1),
      35: Color.fromRGBO(77, 83, 89, 1),
      40: Color.fromRGBO(89, 95, 101, 1),
      50: Color.fromRGBO(114, 120, 126, 1),
      60: Color.fromRGBO(139, 145, 152, 1),
      70: Color.fromRGBO(166, 172, 179, 1),
      80: Color.fromRGBO(193, 199, 206, 1),
      90: Color.fromRGBO(221, 227, 234, 1),
      95: Color.fromRGBO(236, 241, 249, 1),
      98: Color.fromRGBO(246, 250, 255, 1),
      99: Color.fromRGBO(252, 252, 255, 1),
      100: Color.fromRGBO(255, 255, 255, 1),
    },
  );
}
