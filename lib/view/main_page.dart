import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/home_page.dart';
import 'package:sky_mint/view/map_page.dart';
import 'package:sky_mint/widgets/app_bar.dart';
import 'package:sky_mint/widgets/drawer_menu.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentTab = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: getCurrentPage(),
      drawer: MyDrawerMenu(),
      appBar: MyAppBar(),
      bottomNavigationBar: buildBottomBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          setState(() {
            _currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildBottomBar() {
    return AnimatedBottomNavigationBar(
      activeIndex: _currentTab,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 25,
      rightCornerRadius: 25,
      /*
      color: darkColor, //.withOpacity(0)
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildBottomIcon(Icons.calendar_today, 26, 0),
          buildBottomIcon(Icons.search, 32, 1),
          buildBottomIcon(Icons.home, 32, 2),
          buildBottomIcon(Icons.info_outline, 28, 3),
          buildBottomIcon(Icons.location_on_outlined, 32, 4),
        ],
      ),*/
      icons: const [
        Icons.calendar_today,
        Icons.search,
        //Icons.home,
        Icons.info_outline,
        Icons.location_on_outlined,
      ],
      onTap: (index) {
        setState(() {
          _currentTab = index;
        });
      },
    );
  }

  getCurrentPage() {
    if (_currentTab == 4) {
      return HomePage();
    }
    if (_currentTab == 3) {
      return MapPage();
    }
    if (_currentTab == 0) {
      return Center(
        child: Text("takvim"),
      );
    }
    if (_currentTab == 1) {
      return Center(
        child: Text("search"),
      );
    }
    if (_currentTab == 2) {
      return Center(
        child: Text("info"),
      );
    }
  }
}
