import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/calendar_page.dart';
import 'package:sky_mint/view/home_page.dart';
import 'package:sky_mint/view/map_page.dart';
import 'package:sky_mint/view/search_page.dart';
import 'package:sky_mint/view/sks_info_page.dart';
import 'package:sky_mint/widgets/app_bar.dart';
import 'package:sky_mint/widgets/drawer_menu.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
        floatingActionButton: buildFloatingActionButton()
        /*
      FloatingActionButton(
        child: Icon(Icons.add_box_outlined),
        backgroundColor: softwhiteColor,
        foregroundColor: darkColor,
        onPressed: () {
          setState(() {
            _currentTab = 4;
          });
        },
      ),
      */
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
  }

  Widget buildFloatingActionButton() {
    if (_currentTab == 2) {
      return FloatingActionButton(
          child: Icon(Icons.add_box_outlined),
          backgroundColor: softwhiteColor,
          foregroundColor: darkColor,
          onPressed: () {
            setState(() {
              _currentTab = 4;
            });
          });
    } else {
      return SizedBox(
        height: 0.001,
      );
    }
  }

  Widget buildBottomBar() {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: softwhiteColor,
        ),
        child: SalomonBottomBar(
          unselectedItemColor: darkColor,
          currentIndex: _currentTab,
          //gapLocation: GapLocation.center,
          // notchSmoothness: NotchSmoothness.verySmoothEdge,
          //notchSmoothness: NotchSmoothness.softEdge,
          //leftCornerRadius: 25,
          //rightCornerRadius: 25,
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Takvim"),
              selectedColor: darkColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Arama"),
              selectedColor: darkColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Anasayfa"),
              selectedColor: darkColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.info_outline),
              title: Text("Info"),
              selectedColor: darkColor,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.location_on_outlined),
              title: Text("Harita"),
              selectedColor: darkColor,
            ),

            /*
            Icons.search,
            //Icons.home,
            Icons.info_outline,
            Icons.location_on_outlined,
            */
          ],
          onTap: (index) {
            setState(() {
              _currentTab = index;
            });
          },
        ),
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
    if (_currentTab == 0) {
      return CalendarPage();
    }
    if (_currentTab == 1) {
      return Center(
        child: SearchPage(),
      );
    }
    if (_currentTab == 3) {
      return InfoPage();
    }
  }
}
