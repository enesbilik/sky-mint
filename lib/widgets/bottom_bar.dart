// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentTab = 2;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildBottomIcon(Icons.calendar_today, 26, 0),
          buildBottomIcon(Icons.search, 32, 1),
          buildBottomIcon(Icons.home, 32, 2),
          buildBottomIcon(Icons.info_outline, 28, 3),
          buildBottomIcon(Icons.location_on_outlined, 32, 4),
        ],
      ),
    );
  }

  Widget buildBottomIcon(IconData icon, double iconSize, int tab) {
    return IconButton(
        onPressed: () {
          setState(() {
            _currentTab = tab;
          });
        },
        icon: Icon(
          icon,
          size: _currentTab == tab ? iconSize + 2 : iconSize,
          color: _currentTab == tab ? softwhiteColor : Colors.white54,
        ));
  }

  Widget getCurrentPage() {
    switch (_currentTab) {
      case 0:
        return Center(
          child: Text("Takvim"),
        );
      case 1:
        return Center(
          child: Text("Search"),
        );
      case 2:
        return Center(
          child: Text("Home"),
        );
      case 3:
        return Center(
          child: Text("Info"),
        );
      default:
        return Center(
          child: Text("Konum"),
        );
    }
  }
}
