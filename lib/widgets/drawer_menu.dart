// ignore_for_file: use_key_in_widget_constructors

//import 'dart:html';

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/profile_page2.dart';

class MyDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.elliptical(
            150, 200), //bottomRight: Radius.elliptical(70, 200)
      ),
      child: Drawer(
        child: Material(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              SafeArea(
                child: CircleAvatar(
                  radius: 54,
                  backgroundColor: darkColor.withOpacity(0.6),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/profiles/tamer.jpg"),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  "Tamer Yılmaz",
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 18,
                      fontFamily: "Poppins Bold"),
                ),
                subtitle: Text(
                  "tamer@yildiz.edu.tr",
                  style: TextStyle(
                      color: darkColor,
                      fontSize: 16,
                      fontFamily: "Poppins Light"),
                ),
              ),
              Divider(
                color: darkColor,
              ),
              buildListTile(Icons.person_sharp, "Kullanıcı Profili", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage2(),
                  ),
                );
              }),
              buildListTile(
                Icons.settings,
                "Ayarlar",
                () {},
              ),
              buildListTile(
                Icons.power_settings_new_outlined,
                "Çıkış Yap",
                () {
                  exit(0);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTile(IconData icon, String title, VoidCallback click) {
    return ListTile(
      hoverColor: Colors.yellowAccent,
      onTap: click,
      leading: Icon(
        icon,
        size: 28,
        color: darkColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 18,
          color: darkColor,
        ),
      ),
    );
  }
}
