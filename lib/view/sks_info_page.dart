import 'dart:convert';

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
            width: deviceSize.width * 0.9,
            height: deviceSize.height * 0.38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: foodContainerColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: buildFoodText(tempFoodMenu),
          ),
          Container(
            width: deviceSize.width * 0.9,
            height: deviceSize.height * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: foodContainerColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
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
                ),
              ),
              Text(
                foodMenu.date,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Center(
                  child: Text(
                    foodMenu.dinnerFood,
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.7,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    foodMenu.lunchFood,
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.7,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
