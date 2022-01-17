import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static const Color primary = Colors.amber;

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: primary,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: Colors.amberAccent,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(42)),
          borderSide: BorderSide(color: Colors.green),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(42)),
            borderSide: BorderSide(color: Colors.amberAccent)),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.deepOrangeAccent,
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: primary,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primary)),
  );
}
