import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/widgets/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: deviceSize.height,
        width: deviceSize.width,
        child: buildBody(),
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
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          int _index = index % 3;

          return PostItem(_index);
        },
      ),
    );
  }
}
