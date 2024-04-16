// ignore: unused_import
import 'dart:convert';
// ignore: unused_import
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:search_map_location/search_map_location.dart';
import 'package:weatherappnew/search_box.dart';
//import 'package:weatherapp/weather_content.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffACFFFF), Color(0xffFFF8BA)])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(children: [
                Container(
                  alignment: const Alignment(0, 0),
                  padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Center(
                            // child: ClipRRect(
                            //   borderRadius: BorderRadius.circular(30),
                            //   child: Container(
                            //     height: 49,
                            //     width: 362,
                            //     color: const Color(0xffFFFCFC),
                            //     child: const Padding(
                            //       padding: EdgeInsets.all(8.0),
                            //       // child: Text(
                            //       //   'Ragama, Sri Lanka',
                            //       //   style: TextStyle(
                            //       //     fontSize: 20,
                            //       //     fontWeight: FontWeight.bold,
                            //       //     fontFamily: 'Poppins-Bold',
                            //       //     color: Color(0xff0297A0),
                            //       //   ),
                            //       //   textDirection: TextDirection.ltr,
                            //       // ),
                            //     ),
                            //   ),
                            // ),
                            ),
                        SearchRow(),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0, -0.85),
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        //child: WeatherContent(),
                        child: Column(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 348,
                              width: 362,
                              color: const Color(0xff0297A0),
                              child: const Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 40.0, 0.0, 0.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Ragama, Sri Lanka',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Poppins-Bold',
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(0, 20.0, 0.0, 0.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Cloudy',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Poppins-Bold',
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  40.0, 10.0, 0.0, 0.0),
                                              child: SizedBox(
                                                child: Row(
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          'images/cloudy.png'),
                                                      width: 130,
                                                    ),
                                                    Text(
                                                      " 25",
                                                      style: TextStyle(
                                                        fontSize: 60,
                                                        fontFamily:
                                                            'fonts/Poppins-Bold',
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      " ℃",
                                                      style: TextStyle(
                                                        fontSize: 60,
                                                        fontFamily:
                                                            'fonts/Poppins-Bold',
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  50.0, 40.0, 0.0, 0.0),
                                              child: Row(children: [
                                                Text(
                                                  'Feels like: 28',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Poppins-Bold',
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  textAlign: TextAlign.center,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      60.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Air Quality: 64',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily:
                                                          'Poppins-Bold',
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                    ),
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: EdgeInsets.fromLTRB(
                                      //       0.0, 20.0, 0.0, 0.0),
                                      //   child: Row(
                                      //     children: [

                                      //     ],
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //const WeatherContent(),
                        ]),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    alignment: const Alignment(0, -0.85),
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        //BorderRadius.circular(30),
                        Container(
                            height: 190,
                            width: 362,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: const RadialGradient(
                                    radius: 1.50,
                                    focalRadius: 5.0,
                                    colors: [
                                      Color(0xff2A375B),
                                      Color(0xff0297A0)
                                    ])),
                            child: const Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        20.0, 15.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image:
                                            AssetImage('images/humidity.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "96%",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Humidity",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        70.0, 15.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image: AssetImage('images/ssewind.png'),
                                        width: 47,
                                      ),
                                      Text(
                                        "breeze",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "SSE Wind",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        60.0, 15.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image: AssetImage('images/uv.png'),
                                        width: 38,
                                      ),
                                      Text(
                                        "0 very weak",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "UV Index",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        15.0, 25.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image: AssetImage('images/pollen.png'),
                                        width: 50,
                                      ),
                                      Text(
                                        "very low",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Pollen Count",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        45.0, 15.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image: AssetImage(
                                            'images/airpressure.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "1011hPa",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Air Pressure",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        60.0, 15.0, 0.0, 0.0),
                                    child: Column(children: [
                                      Image(
                                        image:
                                            AssetImage('images/visibilty.png'),
                                        width: 45,
                                      ),
                                      Text(
                                        "16km",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Visibility",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              )
                            ])),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    alignment: const Alignment(0, -0.85),
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        //BorderRadius.circular(30),
                        Container(
                          height: 180,
                          width: 362,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const RadialGradient(
                                  radius: 1.50,
                                  focalRadius: 5.0,
                                  colors: [
                                    Color(0xff2A375B),
                                    Color(0xff0297A0)
                                  ])),
                          child: const Column(children: [
                            Row(children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(17.0, 20.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "Now",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  25 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "2 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  26 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "3 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  25 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "4 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  23 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                            ]),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0),
                                  child: Row(children: [
                                    Image(
                                      image: AssetImage('images/line.png'),
                                      height: 50,
                                      width: 320,
                                    ),
                                  ]),
                                )
                              ],
                            ),
                            Row(children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(17.0, 0.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "5 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  25 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "6 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  26 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "7 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  25 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child: Column(children: [
                                  Text(
                                    "8 AM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('images/cloudy.png'),
                                        width: 25,
                                      ),
                                      Text(
                                        "  23 °C",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ]),
                              ),
                            ]),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    ));
  }
}
