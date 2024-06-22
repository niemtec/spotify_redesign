import 'package:flutter/material.dart';
import 'colors.dart'; // Adjust the path to your actual file
import 'text_styles.dart'; // Adjust the path to your actual file

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    accentColor: AppColors.lightPrimary,
    backgroundColor: AppColors.bgLightMain,
    scaffoldBackgroundColor: AppColors.bgLightMain,
    appBarTheme: AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(color: AppColors.fgPrimary),
      textTheme: TextTheme(
        headline6: AppTextStyle.h3.copyWith(color: AppColors.fgPrimary),
      ),
    ),
    textTheme: TextTheme(
      headline3: AppTextStyle.h3,
      subtitle1: AppTextStyle.sub,
      bodyText1: AppTextStyle.p,
      bodyText2: AppTextStyle.small,
      headline4: AppTextStyle.h4,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    accentColor: AppColors.lightPrimary,
    backgroundColor: AppColors.bgMain,
    scaffoldBackgroundColor: AppColors.bgMain,
    appBarTheme: AppBarTheme(
      color: AppColors.primary,
      iconTheme: IconThemeData(color: AppColors.fgPrimary),
      textTheme: TextTheme(
        headline6: AppTextStyle.h3.copyWith(color: AppColors.fgPrimary),
      ),
    ),
    textTheme: TextTheme(
      headline3: AppTextStyle.h3.copyWith(color: AppColors.fgPrimary),
      subtitle1: AppTextStyle.sub.copyWith(color: AppColors.fgSecondary),
      bodyText1: AppTextStyle.p.copyWith(color: AppColors.fgPrimary),
      bodyText2: AppTextStyle.small.copyWith(color: AppColors.fgSecondary),
      headline4: AppTextStyle.h4.copyWith(color: AppColors.fgPrimary),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
