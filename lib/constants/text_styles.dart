import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  /// h3 figma properties
  /// fontFamily: Satoshi
  /// fontSize: 20px
  /// height: 150%
  /// fontWeight: 700
  /// letterSpacing: 3%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle h3 = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 20,
    height: 1.5,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.6,
  );

  /// sub figma properties
  /// fontFamily: Satoshi
  /// fontSize: 14px
  /// height: 150%
  /// fontWeight: 400
  /// letterSpacing: 3%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle sub = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.42,
  );

  /// small figma properties
  /// fontFamily: Satoshi
  /// fontSize: 12px
  /// height: 150%
  /// fontWeight: 400
  /// letterSpacing: 3%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle small = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.36,
  );

  /// p figma properties
  /// fontFamily: Satoshi
  /// fontSize: 16px
  /// height: 150%
  /// fontWeight: 400
  /// letterSpacing: 3%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle p = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.48,
  );

  /// h4 figma properties
  /// fontFamily: Satoshi
  /// fontSize: 18px
  /// height: 150%
  /// fontWeight: 500
  /// letterSpacing: 3%
  /// fontStyle: none
  /// decoration: none
  static const TextStyle h4 = TextStyle(
    fontFamily: 'Satoshi',
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.54,
  );
}
