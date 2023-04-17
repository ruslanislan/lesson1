import 'package:flutter/material.dart';
import 'package:lesson1/resources/colors.dart';

const defaultFontFamily = 'Manrope';

const defaultTextStyle = TextStyle(
  fontFamily: defaultFontFamily,
  color: Colors.black,
  height: 1.1,
);

class WeatherTheme {
  WeatherTheme._();

  static final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.indigo,
    ).copyWith(
      secondary: Colors.indigoAccent,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    shadowColor: const Color.fromRGBO(255, 191, 0, 0.2),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 100,
        fontWeight: FontWeight.w400,
        height: 1.1,
      ),
      bodyMedium: defaultTextStyle,
      titleLarge: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 18,
        height: 1.1,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 24,
        height: 1.1,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 20,
        height: 1.1,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: defaultFontFamily,
        color: Colors.black,
        fontSize: 16,
        height: 1.1,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
