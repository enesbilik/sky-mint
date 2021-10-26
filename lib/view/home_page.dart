import 'dart:math';

import 'package:expendable_fab/expendable_fab.dart';
import 'package:flutter/material.dart';
import 'package:sky_mint/models/post_model.dart';
import 'package:sky_mint/view/share_feed.dart';
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
        backgroundColor: Colors.white,
        body: SizedBox(
          height: deviceSize.height,
          width: deviceSize.width,
          child: buildBody(),
        ),
        floatingActionButton: buildFabIcon(),
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

  buildFabIcon() {
    return ExpendableFab(
      distance: 75.0,
      children: [
        ActionButton(
          icon: Icon(Icons.poll_outlined),
          onPressed: () {},
        ),
        ActionButton(
          onPressed: () {},
          icon: Icon(Icons.photo_rounded),
        ),
        ActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShareFeed(),
              ),
            );
          },
          icon: Icon(Icons.text_fields),
        ),
      ],
    );
  }
}
