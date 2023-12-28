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
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text("Add a car", style: TextStyle(color: kPrimaryColor, fontSize: 18),),
        centerTitle: false,
        leading: const Icon(Icons.arrow_back, color: kPrimaryColor,),
        backgroundColor: kBackgroundColor,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/car_image.png"),
            ),
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(
              onPressed: (){},
              child: const Text("Upload a Photo", style: TextStyle(color: Colors.black),)),
              )
          ],
        )
        ),

    );
  }
}