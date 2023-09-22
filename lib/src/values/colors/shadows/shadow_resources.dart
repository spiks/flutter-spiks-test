import 'package:flutter/cupertino.dart';

// offset-x | offset-y | blur-radius
abstract class ShadowResources {
  /// background: #D9D9D9; (largeButtonBG)
  /// box-shadow: 0px 4px 8px rgba(31, 102, 143, 0.32), 0px 8px 32px rgba(31, 102, 143, 0.24);
  static const largeButton = [
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 8,
      color: Color.fromRGBO(31, 102, 143, 0.32),
    ),
    BoxShadow(
      offset: Offset(0, 8),
      blurRadius: 32,
      color: Color.fromRGBO(31, 102, 143, 0.24),
    ),
  ];

  static const Color largeButtonBG = Color(0xFFD9D9D9);

  /// background: #D9D9D9; (smallButtonBG)
  /// box-shadow: 0px 4px 8px rgba(31, 102, 143, 0.16), 0px 8px 32px rgba(31, 102, 143, 0.08);
  static const smallButton = [
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 8,
      color: Color.fromRGBO(31, 102, 143, 0.16),
    ),
    BoxShadow(
      offset: Offset(0, 8),
      blurRadius: 32,
      color: Color.fromRGBO(31, 102, 143, 0.08),
    ),
  ];

  static const Color smallButtonBG = Color(0xFFD9D9D9);

  /* Shadow Button/Blue */

  /// background: #D9D9D9;
  /// box-shadow: 0px 4px 8px rgba(31, 102, 143, 0.16), 0px 8px 24px rgba(31, 102, 143, 0.32);

  static const blue = [
    BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 8,
      color: Color.fromRGBO(31, 102, 143, 0.16),
    ),
    BoxShadow(
      offset: Offset(0, 8),
      blurRadius: 24,
      color: Color.fromRGBO(31, 102, 143, 0.32),
    ),
  ];

  static const discountTip = [
    BoxShadow(
      color: Color.fromRGBO(0, 18, 26, 0.14),
      offset: Offset(0, 8),
      blurRadius: 20,
    ),
  ];

  static const Color blueBG = Color(0xFFD9D9D9);
}
