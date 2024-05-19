import 'package:flutter/material.dart';

class Tbottonsheettheme{
  Tbottonsheettheme._();

  static BottomSheetThemeData lightBottomSheetTheme = const BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    elevation: 0,
    showDragHandle: true,
    constraints: BoxConstraints(
      minHeight: double.infinity
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  );
  
  static BottomSheetThemeData darkBottomSheetTheme = const BottomSheetThemeData(
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    elevation: 0,
    showDragHandle: true,
    constraints: BoxConstraints(
      minHeight: double.infinity
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
  );
}