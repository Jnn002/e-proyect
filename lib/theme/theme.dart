import 'package:e_proyecto/theme/theme_exp.dart';
import 'package:flutter/material.dart';
class TappTheme{

  TappTheme._();

  static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Roboto',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TTextTheme.lightTextTheme,
  chipTheme: TchipTheme.lightChipTheme,
  inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  appBarTheme: TAppBarTheme.lightAppBarTheme,
  elevatedButtonTheme: TelevatedbuttonTheme.lightElevatedButtonTheme,
  checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
  bottomSheetTheme: TbottonsheetTheme.lightBottomSheetTheme,
  );

  static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Roboto',
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TTextTheme.darkTextTheme,
  chipTheme: TchipTheme.darkChipTheme,
  inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  appBarTheme: TAppBarTheme.darkAppBarTheme,
  elevatedButtonTheme: TelevatedbuttonTheme.darkElevatedButtonTheme,
  checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
  bottomSheetTheme: TbottonsheetTheme.darkBottomSheetTheme,

  );
}