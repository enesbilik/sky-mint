import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class infoPage extends StatelessWidget {
  infoPage({Key? key}) : super(key: key);

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: PageView(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent,
                  gradient: RadialGradient(
                      colors: const [Colors.white10, Colors.indigo])),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent,
                  gradient: RadialGradient(
                      colors: const [Colors.white10, Colors.indigo])),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                      colors: const [Colors.white10, Colors.indigo])),
            )
          ],
        ),
      ),
      Expanded(
          child: PageView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    colors: const [Colors.white10, Colors.indigo])),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    colors: const [Colors.white10, Colors.indigo])),
          )
        ],
      ))
    ]));
  }
}
