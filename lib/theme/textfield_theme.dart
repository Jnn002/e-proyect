import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(color: Colors.black, fontSize: 16),
    hintStyle: const TextStyle().copyWith(color: Colors.grey, fontSize: 16),
    errorStyle: const TextStyle().copyWith(color: Colors.red, fontSize: 16),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black, fontSize: 16),
    border: const   OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
  );

  static final darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle: const TextStyle().copyWith(color: Colors.white, fontSize: 16),
    hintStyle: const TextStyle().copyWith(color: Colors.grey, fontSize: 16),
    errorStyle: const TextStyle().copyWith(color: Colors.red, fontSize: 16),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.white, fontSize: 16),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
  );
}
