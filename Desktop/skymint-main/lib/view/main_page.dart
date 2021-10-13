import 'package:flutter/material.dart';
import 'package:skymint/constants/colors.dart';
import 'package:skymint/widgets/app_bar.dart';
import 'package:skymint/widgets/bottom_bar.dart';
import 'package:skymint/widgets/drawer_menu.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerMenu(),
      appBar: MyAppBar(),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
