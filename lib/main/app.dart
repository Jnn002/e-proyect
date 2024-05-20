import 'package:flutter/material.dart';
import 'package:e_proyecto/theme/theme_exp.dart';
export 'package:e_proyecto/main/app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TappTheme.lightTheme,
      darkTheme: TappTheme.darkTheme,
    );
  }
}