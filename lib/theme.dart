import 'package:flutter/material.dart';
import 'colors.dart'; // Adjust the path to your actual file
import 'text_styles.dart'; // Adjust the path to your actual file

class AppTheme {
  // static const lightColorScheme = ColorScheme(
  //   brightness: Brightness.light,
  //   primary: AppColors.primary,
  //   onPrimary: AppColors.fgPrimary,
  //   secondary: AppColors.lightPrimary,
  //   onSecondary: AppColors.fgLightPrimary,
  //   error: Colors.red,
  //   onError: Colors.white,
  //   surfaceBright: AppColors.bgLightMain,
  //   onSurfaceVariant: AppColors.fgTertiary,
  //   surface: AppColors.bgPrimary,
  //   onSurface: AppColors.fgTertiary,
  // );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromRGBO(28, 215, 96, 1),
    onPrimary: Color.fromRGBO(17, 17, 17, 1.0),
    secondary: Color.fromRGBO(51, 56, 66, 1),
    onSecondary: Color.fromRGBO(137, 137, 137, 1),
    tertiary: Color.fromRGBO(224, 224, 224, 1),
    onTertiary: Color.fromRGBO(17, 17, 17, 1.0),
    error: Colors.red,
    onError: Color.fromRGBO(17, 17, 17, 1.0),
    surfaceDim: Color.fromRGBO(17, 17, 17, 1.0),
    onSurfaceVariant: AppColors.fgSecondary,
    surface: Color.fromRGBO(17, 17, 17, 1.0),
    onSurface: Colors.white,
  );

  // static final ThemeData lightTheme = ThemeData(
  //   colorScheme: lightColorScheme,
  //   useMaterial3: true,
  //   textTheme: const TextTheme(
  //     headlineLarge: AppTextStyle.h3,
  //     headlineMedium: AppTextStyle.h4,
  //     headlineSmall: AppTextStyle.sub,
  //     bodyMedium: AppTextStyle.p,
  //     bodySmall: AppTextStyle.small,
  //   ),
  //   appBarTheme: AppBarTheme(
  //     backgroundColor: lightColorScheme.primary,
  //     iconTheme: IconThemeData(color: lightColorScheme.onPrimary),
  //     titleTextStyle: AppTextStyle.h3.copyWith(color: lightColorScheme.onPrimary),
  //   ),
  //   buttonTheme: ButtonThemeData(
  //     buttonColor: lightColorScheme.primary,
  //     textTheme: ButtonTextTheme.primary,
  //   ),
  // );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: darkColorScheme,
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    highlightColor: Colors.transparent,
    textTheme: TextTheme(
      headlineLarge: AppTextStyle.h3.copyWith(color: darkColorScheme.onSurface),
      headlineSmall: AppTextStyle.sub.copyWith(color: darkColorScheme.onSecondary),
      bodyMedium: AppTextStyle.p.copyWith(color: darkColorScheme.onSurface),
      bodySmall: AppTextStyle.small.copyWith(color: darkColorScheme.onSecondary),
      headlineMedium: AppTextStyle.h4.copyWith(color: darkColorScheme.onSurface),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkColorScheme.primary,
      iconTheme: IconThemeData(color: darkColorScheme.secondary),
      titleTextStyle: AppTextStyle.h3.copyWith(color: darkColorScheme.onPrimary),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: darkColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
