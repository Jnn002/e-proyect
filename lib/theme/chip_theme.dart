import 'package:flutter/material.dart';

class TchipTheme{
  TchipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey[400],
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkmarkColor: Colors.white
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey[400],
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkmarkColor: Colors.white
  );
}