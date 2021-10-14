// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      title: const Text(
        "Yıldızın\nSosyal Medyası",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Pattaya",color: softwhiteColor),
      ),
      actions: [
        buildActionButton(Icons.notifications_none, () {}),
        buildActionButton(Icons.messenger_outline_sharp, () {}),
      ],
    );
  }

  Widget buildActionButton(IconData icon, Function onClick) {
    return IconButton(
      onPressed: () => onClick,
      icon: Icon(
        icon,
        color: softwhiteColor,
      ),
    );
  }
}
