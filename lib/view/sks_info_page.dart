import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/models/food_model.dart';
//import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class InfoPage extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: buildBody(),
      ),
    ));
  }

  Widget buildBody() {
    return Column(children: [
      Expanded(
        flex: 3,
        child: PageView(
          children: [
            buildFoodContainer(listOfFood[0]),
            buildFoodContainer(listOfFood[1]),
          ],
        ),
      ),
      Expanded(
          flex: 2,
          child: PageView(
            children: [
              buildFoodContainer(''),
            ],
          ))
    ]);
  }

  Widget buildFoodContainer(FoodModel food) {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 35, 40, 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color(0xff0F2027),
            Color(0xff203A43),
            Color(0xff2C5364),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Text(
              food.day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
