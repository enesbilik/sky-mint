import 'dart:math';

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/post_model.dart';
import 'package:sky_mint/widgets/post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: deviceSize.height,
          width: deviceSize.width,
          child: buildBody(),
        ),
        floatingActionButton: buildCircularMenu(),
      ),
    );
  }

  Widget buildBody() {
    return RefreshIndicator(
      onRefresh: () async {
        final random = Random();
        await Future.delayed(Duration(seconds: random.nextInt(2)));
      },
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: listOfPost.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildPost(listOfPost[index]);
        },
      ),
    );
  }

  /*
  Widget buildFloatingActionButton(Function click) {
    return FloatingActionButton(
        child: Icon(Icons.add_box_outlined),
        backgroundColor: softwhiteColor,
        foregroundColor: darkColor,
        onPressed: () => click());
  }

  */
  buildCircularMenu() {
    return CircularMenu(
      alignment: Alignment.bottomRight,
      toggleButtonColor: darkColor,
      toggleButtonBoxShadow: [],
      toggleButtonAnimatedIconData: AnimatedIcons.add_event,
      items: [
        CircularMenuItem(icon: Icons.share, color: Colors.green, onTap: () {}),
        CircularMenuItem(icon: Icons.gif, color: Colors.blue, onTap: () {}),
        CircularMenuItem(icon: Icons.photo, color: Colors.orange, onTap: () {}),
      ],
    );
  }
}
