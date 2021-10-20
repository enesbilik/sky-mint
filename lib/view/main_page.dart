import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/home_page.dart';
import 'package:sky_mint/view/map_page.dart';
import 'package:sky_mint/widgets/app_bar.dart';
import 'package:sky_mint/widgets/drawer_menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentTab = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getCurrentPage(),
      drawer: MyDrawerMenu(),
      appBar: MyAppBar(),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    return BottomAppBar(
      color: softwhiteColor, //.withOpacity(0)
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
        color: _currentTab == tab ? darkColor : darkColor.withOpacity(0.8),
      ),
    );
  }

  getCurrentPage() {
    if (_currentTab == 2) {
      return HomePage();
    }
    if (_currentTab == 4) {
      return MapPage();
    }
  }
}
