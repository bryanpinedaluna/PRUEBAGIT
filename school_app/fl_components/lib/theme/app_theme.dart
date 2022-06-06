import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blue;
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
  );
}
