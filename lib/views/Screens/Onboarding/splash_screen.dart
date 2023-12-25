import 'package:drive_guard/views/Screens/Onboarding/Onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>  OnboardingScreen(), // Replace with your destination screen
          ),
        );
      // Navigator.pushReplacementNamed(context, '/ Onboarding');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/images/Logo.png', 
             height: 100,
        ),
        const SizedBox(height: 20),
            const SpinKitDoubleBounce(
              color: Colors.white,
              size: 50.0,
            ),
          ]
      ),
      )
    );
  }
}