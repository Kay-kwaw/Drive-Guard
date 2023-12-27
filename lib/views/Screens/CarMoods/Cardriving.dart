

import 'package:drive_guard/views/Screens/Constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CarDrivingWidget extends StatefulWidget {
  const CarDrivingWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CarDrivingWidgetState createState() => _CarDrivingWidgetState();
}

class _CarDrivingWidgetState extends State<CarDrivingWidget>
    with TickerProviderStateMixin {
  

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 50, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                //  Text("Your car",
                //   style: TextStyle(
                //     color: kPrimaryColor,
                //     fontSize: 18,
                //   ),
                //   )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'Elantra Model 42',
                      style: TextStyle(
                            color:kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.black,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: IconButton(
                      // borderColor: Colors.transparent,
                      // borderRadius: 30,
                      // buttonSize: 46,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
             'assets/images/car_image.png',
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '72',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:kPrimaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 92,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MPH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontFamily: 'Outfit',
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              )
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Battery Status',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontFamily: 'Outfit',
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: LinearPercentIndicator(
                percent: 0.4,
                width: MediaQuery.sizeOf(context).width * 0.9,
                lineHeight: 24,
                animation: true,
                animateFromLastPercent: true,
                progressColor: const Color.fromARGB(255, 58, 128, 1),
                backgroundColor: Colors.grey.shade300,
                barRadius: const Radius.circular(40),
                padding: EdgeInsets.zero,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Charge',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Text(
                        '70%',
                        style:
                            TextStyle(
                                  fontWeight: FontWeight.bold,
                                 fontSize: 20,
                                 color: kPrimaryColor
                                ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Range',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Text(
                        '329m',
                        style:
                            TextStyle(
                                  fontWeight: FontWeight.bold,
                                 fontSize: 20,
                                 color: kPrimaryColor
                                ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Text(
                          'Status',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Text(
                        'Good',
                        style:
                            TextStyle(
                                  fontWeight: FontWeight.bold,
                                 fontSize: 20,
                                 color: kPrimaryColor
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Car is Running',
                                style: TextStyle(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 8, 16, 24),
                                child: Text(
                                  'Put your car in park in order to turn your car off.',
                                  style:TextStyle(
                                    color: Colors.grey
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, -0.75),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: Color(0x8E000000),
                            offset: Offset(0, 3),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.power_settings_new_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
