
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

// ignore: camel_case_types
class customButton {
  ElevatedButton buildButton({
    required String text,
    required VoidCallback onPressed,
    required Color color,
    required Color textColor,
    required double width,
    required double height,
    required double fontSize,
    required FontWeight fontWeight,
    required double borderRadius,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
} 

