// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/view/direct_message/message_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: darkColor,
      title: const Text(
        "Yıldızın\nSosyal Medyası",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Pattaya", color: softwhiteColor),
      ),
      actions: [
        buildActionButton(Icons.notifications_none, 28, () {}),
        buildActionButton(Icons.messenger_outline_sharp, 26, () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MessagePage()));
        }),
      ],
    );
  }
}

Widget buildActionButton(
  IconData icon,
  double iconSize,
  Function onClick,
) {
  return IconButton(
    onPressed: () => onClick(),
    icon: Icon(
      icon,
      color: softwhiteColor,
      size: iconSize,
    ),
  );
}
