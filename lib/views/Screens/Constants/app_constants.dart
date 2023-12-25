
import 'package:flutter/material.dart';
const Color kBackgroundColor =Colors.white;


final ThemeData kAppTheme = ThemeData(
  primaryColor:Colors.white,
  hintColor: Colors.black,
  secondaryHeaderColor: Colors.black,
  );

class AppFonts {
  // ignore: constant_identifier_names
  static const String Montserrat = 'Montserrat';
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
}