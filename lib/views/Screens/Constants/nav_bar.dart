import 'package:drive_guard/views/Screens/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  

  const MyBottomNavigationBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kBackgroundColor,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: '',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.online_prediction_rounded, color: Colors.white,),
          label: '',
          backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white,),
          label: '',
          backgroundColor: Colors.white
        ),
      ],
    );
  }
}
