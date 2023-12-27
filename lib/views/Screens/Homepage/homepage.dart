

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {


  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Your Car',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Fleet Model 42',
                      style: TextStyle(
                            fontFamily: 'Outfit',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/car_image.png',
                width: MediaQuery.sizeOf(context).width,
                height: 240,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 12),
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
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          '70%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          '329m',
                          style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black,
                                 fontSize: 20,
                              )
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
                            style: TextStyle(),
                          ),
                        ),
                        Text(
                          'Good',
                          style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black,
                                 fontSize: 20,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color(0x9A090F13),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x43000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/car_image.png'
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fleet Assistant',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    
                                    color: Color(0xB3FFFFFF),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '4:30pm',
                                  textAlign: TextAlign.end,
                                  style:TextStyle(
                                    color: Color(0xB3FFFFFF),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Battery is in need of charging.',
                                    style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x37000000),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          
                        },
                        child: const Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Icon(
                                Icons.bolt,
                                color: Colors.white,
                                size: 44,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                'Start Car',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                      fontFamily: 'Outfit',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                child: Text(
                                  'Tap here to start your car.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    
                                    color: Color(0xB3FFFFFF),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      height: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 58, 128, 1),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x39000000),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Icon(
                              Icons.electric_car,
                              color: Colors.white,
                              size: 44,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              'Car Charging',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                    fontFamily: 'Outfit',
                                    color:
                                        Colors.white,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                              child: Text(
                                'Current Status\n30m until full',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xB3FFFFFF),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
