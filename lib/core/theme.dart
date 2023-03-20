import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = lightTheme;
  void switchTheme() {
    if (_theme.brightness == Brightness.light) {
      _theme = darkTheme;
    } else {
      _theme = lightTheme;
    }
    notifyListeners();
  }

  ThemeData get getTheme => _theme;
}

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.grey.shade700),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey.shade700),
      border: InputBorder.none,
    ),
    fontFamily: 'TiltNeon',
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.grey.shade300,
      secondary: Colors.grey.shade200,
      onSecondary: Colors.black,     
      background: Colors.white,
      onBackground: Colors.black,
    ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Colors.grey.shade500),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.grey.shade500),
      border: InputBorder.none,
    ),
    fontFamily: 'TiltNeon',
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(
      primary: Colors.grey.shade900,
      onPrimary: Colors.white,
      secondary: Colors.grey.shade800,
      onSecondary: Colors.grey.shade500,
      background: Colors.grey.shade900,
      onBackground: Colors.white,
    ));
