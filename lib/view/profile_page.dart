import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/user_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      appBar: buildAppBar(context),
    );
  }
}

Widget buildBody(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: const [
            SizedBox(
              height: 120,
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(width: 2.0, color: darkColor),
                        vertical: BorderSide(width: 2.0, color: darkColor))),
              ),
            ),
            CircleAvatar(
              minRadius: 30,
              maxRadius: 60,
              backgroundImage: AssetImage("assets/eg2.png"),
            ),
            SizedBox(
              height: 120,
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(width: 2.0, color: darkColor),
                        vertical: BorderSide(width: 2.0, color: darkColor))),
              ),
            )
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            // ignore: unnecessary_string_interpolations
            "${listOfUser[3].name}",
            textScaleFactor: 1.75,
          )
        ],
      )
    ],
  );
}

AppBar buildAppBar(BuildContext context) {
  return AppBar();
}
