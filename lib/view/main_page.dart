import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/calendar_page.dart';
import 'package:sky_mint/view/home_page.dart';
import 'package:sky_mint/view/map_page.dart';
import 'package:sky_mint/view/search_page.dart';
import 'package:sky_mint/view/sks_info_page.dart';
import 'package:sky_mint/widgets/app_bar.dart';
import 'package:sky_mint/widgets/drawer_menu.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
      extendBody: true,
      body: getCurrentPage(),
      drawer: MyDrawerMenu(),
      appBar: MyAppBar(),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.white70,
            ),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 6,
              color: Colors.black,
              offset: Offset(1, 3),
            )
          ],
        ),
        child: SalomonBottomBar(
          unselectedItemColor: darkColor,
          currentIndex: _currentTab,
          margin: EdgeInsets.all(12),

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
              title: Text("Bilgi"),
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
    if (_currentTab == 0) {
      return CalendarPage();
    }
    if (_currentTab == 1) {
      return SearchPage();
    }
    if (_currentTab == 2) {
      return HomePage();
    }
    if (_currentTab == 3) {
      return InfoPage();
    }
    if (_currentTab == 4) {
      return MapPage();
    }
  }
}
