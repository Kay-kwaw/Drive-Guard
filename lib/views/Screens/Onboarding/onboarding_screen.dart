import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // ignore: non_constant_identifier_names
  final List<Map<String, String>> OnboardingItems = [
    {
      'title': 'Add Cars',
      'subtitle': 'We are here to help you',
      'image': 'assets/images/electric_car.png',
    },
    {
      'title': 'Full Control',
      'subtitle': 'Explore the features of our App',
      'image': 'assets/images/undraw_Speed_test_re_pe1f.png',
    },
    {
      'title': 'Keep Track of your Car',
      'subtitle': 'Get started with our App and enjoy the ride',
      'image': 'assets/images/location_image.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Center(
         child: CarouselSlider(
           items: OnboardingItems.map((item) {
              return Center(
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          item['image'] != null? item['image']! : 'assets/images/electric_car.png',
                          height: 200.0, // Adjust the height as needed
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        item['title']!= null? item['title']! : 'Welcome to Drive Guard',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        item['subtitle']!= null? item['subtitle']! : 'Welcome to Drive Guard',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 400.0, // Adjust the height as needed
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
         ),
         
       ),
       
     ),
     
    );
  }
}