
import 'package:flutter/material.dart';
const Color kBackgroundColor =Colors.white;


final ThemeData kAppTheme = ThemeData(
  primaryColor:Colors.white,
  hintColor: Colors.black,
  secondaryHeaderColor: Colors.black,
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
    ),
    headline2: const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: "Montserrat",
    ),
  ),
);

class AppFonts {
  static const String Montserrat = 'Montserrat';
  // Add more font constants as needed

  // TextStyle constants for common text styles
  static const TextStyle headline1 = TextStyle(
    fontFamily: Montserrat,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyText = TextStyle(
    fontFamily: Montserrat,
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );

  // Add more TextStyle constants as needed
}