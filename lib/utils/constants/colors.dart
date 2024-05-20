import 'package:flutter/material.dart';

class TColors{
  TColors._();

  //colores app
  static const Color primary = Color.fromARGB(255, 200, 106, 219);
  static const Color secondary = Color.fromARGB(255, 214, 224, 64);
  static const Color accent = Color.fromARGB(255, 213, 181, 218);

  //Gradient colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0), 
    end: Alignment(0.707, -0.707),
    colors: [
      Color.fromARGB(255, 200, 106, 219),
      Color. fromARGB(255, 200, 80, 190),
      Color.fromARGB(255, 214, 60, 120),
      ],
  );

  //Colores de texto
  static const Color textPrimary = Color.fromARGB(255, 0, 0, 0);
  static const Color textsecondeary = Color.fromARGB(255, 87, 86, 86);
  static const Color textwhite = Color.fromARGB(255, 255, 255, 255);

  //Colores de fondo
  static const Color light = Color.fromARGB(255, 255, 255, 255);
  static const Color dark = Color.fromARGB(255, 51, 50, 50);
  static const Color primarybackground = Color.fromARGB(255, 255, 255, 255);

  //background container color
  static const Color lightcontainer = Color.fromARGB(255, 255, 255, 255);
  static const Color darkcontainer = Color.fromARGB(255, 51, 50, 50);

  //button colors
  static const Color primaryButton = Color.fromARGB(255, 200, 106, 219);
  static const Color secondaryButton = Color.fromARGB(255, 213, 181, 218);
  static const Color disabledButton = Color.fromARGB(255, 143, 143, 141);

  //border colors
  static const Color borderPrimary = Color.fromARGB(255, 143, 143, 141);
  static const Color borderSecondary = Color.fromARGB(255, 255, 255, 255);

  //error and validation colors
  static const Color error = Color.fromARGB(255, 255, 0, 0);
  static const Color success = Color.fromARGB(255, 65, 165, 70);
  static const Color warning = Color.fromARGB(255, 255, 165, 0);
  static const Color info = Color.fromARGB(255, 0, 0, 255);

  //Neutral shades
  static const Color neutral1 = Color.fromARGB(255, 51, 51, 51);
  static const Color neutral2 = Color.fromARGB(255, 102, 102, 102);
  static const Color neutral3 = Color.fromARGB(255, 153, 153, 153);
  static const Color neutral4 = Color.fromARGB(255, 204, 204, 204);
  static const Color neutral5 = Color.fromARGB(255, 229, 229, 229);
  static const Color neutral6 = Color.fromARGB(255, 242, 242, 242);
  static const Color neutral7 = Color.fromARGB(255, 255, 255, 255);

}