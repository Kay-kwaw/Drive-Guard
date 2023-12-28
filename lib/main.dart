import 'package:drive_guard/views/Screens/Addcar/addcar.dart';
import 'package:drive_guard/views/Screens/CarMoods/Cardriving.dart';
import 'package:drive_guard/views/Screens/CarMoods/Carparked.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddcarWdiget(),
    );
  }
}

