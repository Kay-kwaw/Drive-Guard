import 'package:carousel_slider/carousel_slider.dart';
import 'package:drive_guard/views/Screens/Constants/app_constants.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
    int _currentIndex =0;
    // late AnimationController _controller;
  // ignore: non_constant_identifier_names
  final List<Map<String, String>> OnboardingItems = [
    {
      'title': 'Add Cars',
      'subtitle': 'We are here to help you',
      'image': 'assets/images/electric_car-removebg-preview.png',
    },
    {
      'title': 'Full Control',
      'subtitle': 'Explore the features of our App',
      'image': 'assets/images/undraw_Speed_test_re_pe1f-removebg-preview.png',
    },
    {
      'title': 'Keep Track of your Car',
      'subtitle': 'Get started with our App and enjoy the ride',
      'image': 'assets/images/location_image-removebg-preview.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
     body: 
         SafeArea(
           child: Center(
             child: CarouselSlider(
               items: OnboardingItems.map((item) {
                  return Column(
                    children:[ Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              item['image'] != null? item['image']! : 'assets/images/electric_car.png',
                              height: 180.0, // Adjust the height as needed
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Text(
                            item['title']!= null? item['title']! : 'Welcome to Drive Guard',
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            item['subtitle']!= null? item['subtitle']! : 'Welcome to Drive Guard',
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              color: kPrimaryColor
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Align(
                     alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: _currentIndex == index ? 25.0 : 18.0,
                            height: 9.0,
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              shape: BoxShape.rectangle,
                              color: _currentIndex == index
                                  ? const Color.fromARGB(255, 121, 124, 128)
                                  : const Color.fromARGB(255, 232, 232, 233),
                                  ),
                                );
                              }),
                            ),)),
                            const SizedBox(height: 20,)
                            
                  ]
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400.0, // Adjust the height as needed
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }, 
                ),
             ),
           ),
         ), 
    );
  }
}



