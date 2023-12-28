import 'package:drive_guard/views/Screens/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class AddcarWdiget extends StatefulWidget {
  const AddcarWdiget({super.key});

  @override
  State<AddcarWdiget> createState() => _AddcarWdigetState();
}

class _AddcarWdigetState extends State<AddcarWdiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: kPrimaryColor,),
        backgroundColor: kBackgroundColor,
      ),
      body: SafeArea(
        top: true,
        child: ),

    );
  }
}