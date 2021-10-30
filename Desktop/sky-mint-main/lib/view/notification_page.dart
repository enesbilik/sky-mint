import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/widgets/app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: softwhiteColor,
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: darkColor,
          onPressed: () {},
          child: Icon(Icons.clear_all),
        ));
  }

  Widget buildBody() {
    return NotificationListener<ScrollNotification>(
      child: Column(
        children: const [],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: darkColor,
      title: const Text(
        "Bildirimler",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Poppins", color: softwhiteColor),
      ),
      actions: [
        buildActionButton(Icons.search, 26, () {}),
        buildActionButton(Icons.more_vert, 26, () {}),
      ],
    );
  }
}
