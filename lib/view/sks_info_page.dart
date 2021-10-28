// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/food_model.dart';
//import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class InfoPage extends StatefulWidget {
  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: buildBody(deviceSize),
    ));
  }

  Widget buildBody(Size deviceSize) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: deviceSize.width * 0.85,
              height: deviceSize.height * 0.35,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff75C2FF).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: foodContainerColors,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/pin.png',
                        width: 60,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: buildFoodText(tempFoodMenu),
                  )
                ],
              )),
          Container(
              width: deviceSize.width * 0.85,
              height: deviceSize.height * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff75C2FF).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                gradient: const LinearGradient(
                  colors: foodContainerColors,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/pin.png',
                        width: 60,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: buildRingText(),
                  )
                ],
              )),
        ],
      ),
    );
  }

  buildFoodText(FoodModel foodMenu) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                foodMenu.day,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Poppins Bold",
                ),
              ),
              Text(
                foodMenu.date,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Poppins Bold"),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Öğle Yemeği",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 20,
                          fontFamily: "Poppins Bold"),
                    ),
                    Text(
                      foodMenu.dinnerFood,
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 17,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Akşam Yemeği",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 20,
                          fontFamily: "Poppins Bold"),
                    ),
                    Text(
                      foodMenu.lunchFood,
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 17,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildRingText() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Ring Saatleri",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Poppins Bold",
                ),
              )
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Davutpaşa-Cevizlibağ Ring",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 17,
                          fontFamily: "Poppins Bold"),
                    ),
                    Text(
                      "07.30-10.00 arası 5 dakikada bir\n 10.15-18.00 arası 15 dakikada bir\n18.30-21.00 arası 30 dakikada bir\n",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Kampüs İçi Ring",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 17,
                          fontFamily: "Poppins Bold"),
                    ),
                    Text(
                      "07.30-10.00 arası 5 dakikada bir\n 10.15-18.00 arası 15 dakikada bir",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 13,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Davutpaşa-Yıldız     Yıldız-Davutpaşa",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 0.7,
                          height: 1.5,
                          fontSize: 13,
                          fontFamily: "Poppins Bold"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
/*
                            Text(
                              "Davutpaşa-Yıldız",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 15,
                                  fontFamily: "Poppins Bold"),
                            ),*/
                            Text(
                              "->08.00\n->09.00\n->10.00\n->11.00\n->12.15",
                              style: TextStyle(
                                  color: Colors.white,
                                  //letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            /*Text(
                              "Yıldız-Davutpaşa",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 15,
                                  fontFamily: "Poppins Bold"),
                            ),*/
                            Text(
                              "->13.00\n->14.00\n->15.00\n->16.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  //letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "->07.30\n->09.00\n->10.00\n->11.00\n->12.15",
                              style: TextStyle(
                                  color: Colors.white,
                                  //letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            /*Text(
                              "Yıldız-Davutpaşa",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 15,
                                  fontFamily: "Poppins Bold"),
                            ),*/
                            Text(
                              "->13.00\n->14.00\n->15.00\n->16.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  //letterSpacing: 0.7,
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: "Poppins"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
