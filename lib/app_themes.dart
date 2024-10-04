import "package:flutter/material.dart";

class AppTheme {
  static const Color LightPrimary = Color(0xFFB7935F);
  static const Color DarkPrimary = Color(0xFF141A2E);
  static const Color White = Color(0xFFF8F8F8);
  static const Color Black = Color(0xFF242424);
  static const Color Gold = Color(0xFFFACC1D);

  static ThemeData LightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black)
      ),
      scaffoldBackgroundColor: Colors.transparent,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightPrimary,
          selectedItemColor: Black,
          unselectedItemColor: White,
          type: BottomNavigationBarType.fixed),

      textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Black),
          headlineMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Black),
          bodyMedium: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Black)));

  static ThemeData DarkTheme = ThemeData();
}
