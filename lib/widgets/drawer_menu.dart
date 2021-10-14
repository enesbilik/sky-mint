// ignore_for_file: use_key_in_widget_constructors

//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class MyDrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(100)),
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            CircleAvatar(
                radius: 70,
              backgroundColor: softwhiteColor,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/eg1.png"),
            ),),
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
              title: Text(
                "Sky-Mint",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "mint@skylab.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_sharp,
                size: 30,
              ),
              title: Text(
                "Kullanıcı Profili",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                "Ayarlar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.power_settings_new_outlined,
                size: 30,
              ),
              title: Text(
                "Çıkış Yap",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
