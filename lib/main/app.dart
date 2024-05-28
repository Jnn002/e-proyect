//import de paquetes de funcionalidases de flutter
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//!imports de funcionalidades de la aplicacion
//import screesns de la aplicacion
import 'package:e_proyecto/screens/screens_exp.dart';
//import de configuracion thema
import 'package:e_proyecto/theme/theme_exp.dart';
//Export para dar acceso a nuestra funcion main luego
export 'package:e_proyecto/main/app.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TappTheme.lightTheme,
      darkTheme: TappTheme.darkTheme,
      home: const IncorporacionOnboarding(),
    );
  }
}