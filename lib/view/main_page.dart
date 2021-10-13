import 'package:flutter/material.dart';
import 'package:sky_mint/widgets/app_bar.dart';
import 'package:sky_mint/widgets/bottom_bar.dart';
import 'package:sky_mint/widgets/drawer_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawerMenu(),
      appBar: MyAppBar(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
