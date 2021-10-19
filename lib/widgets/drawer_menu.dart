// ignore_for_file: use_key_in_widget_constructors

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class MyDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.elliptical(
            150, 200), //bottomRight: Radius.elliptical(70, 200)
      ),
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const SafeArea(
              child: CircleAvatar(
                radius: 55,
                backgroundColor: darkColor,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/eg1.png"),
                ),
              ),
            ),
            /*  UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/eg1.png"),
                  fit: BoxFit.scaleDown,
                  scale: 0.5,
                ),
                //borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
              
              accountName: Text(
                "",
              ),
              accountEmail: Text(
                "",
              ),
            ),*/
            ListTile(
              onTap: () {},
              title: Text(
                "Sky-Mint",
                style: TextStyle(color: darkColor, fontSize: 18,fontFamily: "RobotoSlab Bold"),
              ),
              subtitle: Text(
                "admin@sky_mint.com",
                style: TextStyle(color: darkColor, fontSize: 16,fontFamily: "RobotoSlab Light"),
              ),
            ),
            Divider(
              color: darkColor,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.person_sharp,
                size: 28,
                color: darkColor,
              ),
              title: Text(
                "Kullanıcı Profili",
                style: TextStyle(
                  fontSize: 18,
                  color: darkColor,
                  fontFamily: "RobotoSlab"
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
                size: 28,
                color: darkColor,
              ),
              title: Text(
                "Ayarlar",
                style: TextStyle(
                  fontFamily: "RobotoSlab",
                  fontSize: 18,
                  color: darkColor,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.power_settings_new_outlined,
                size: 28,
                color: darkColor,
              ),
              title: Text(
                "Çıkış Yap",
                style: TextStyle(
                  fontFamily: "RobotoSlab",
                  fontSize: 18,
                  color: darkColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
