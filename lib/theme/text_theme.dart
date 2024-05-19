import 'package:flutter/material.dart';
class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
  headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
  headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
  headlineSmall:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),

  titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
  titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
  titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),

  bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
  bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
  bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500 , color: Colors.black),

  labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
  labelMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),


  );

  static TextTheme darkTextTheme = const TextTheme(
  headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
  headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
  headlineSmall:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),

  titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
  titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
  titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),

  bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
  bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
  bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500 , color: Colors.white),

  labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white),
  labelMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
  );
}