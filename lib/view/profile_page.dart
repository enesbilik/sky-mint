import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sky_mint/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: buildBody(context),
      //appBar: buildAppBar(context),
    );
  }
}

Widget buildBody(BuildContext context) {
  var deviceSize = MediaQuery.of(context).size;
  return SafeArea(
    child: SizedBox(
      height: deviceSize.height,
      width: deviceSize.width,
      child: Column(
        children: [
          buildAppBar(context),
          buildInfoContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                // ignore: unnecessary_string_interpolations
                "Tamer Yılmaz",
                textScaleFactor: 1.3,
                style: TextStyle(
                    fontFamily: "Poppins Bold", color: softwhiteColor),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "#Flutter",
                textScaleFactor: 1.2,
                style: TextStyle(
                  fontFamily: "Poppins Light",
                  color: softwhiteColor,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Görsel",
                    style: TextStyle(
                        fontFamily: "Poppins", fontSize: 16, color: darkColor)),
                style: ElevatedButton.styleFrom(
                  shadowColor: softwhiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: Size(110, 30),
                  primary: softwhiteColor,
                  elevation: 5,
                  //primary: pressAttention ? kPrimaryColor : darkColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Yazı",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: Size(110, 30),
                  elevation: 5,
                  //primary: pressAttention ? kPrimaryColor : darkColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Anket",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  minimumSize: Size(110, 30),
                  elevation: 5,
                  //primary: pressAttention ? kPrimaryColor : darkColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                color: softwhiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ),
        ],
      ),
    ),
  );
}

Padding buildInfoContainer() {
  return Padding(
    padding: EdgeInsets.fromLTRB(5, 2, 5, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Takip Edilen",
              style: TextStyle(
                  color: softwhiteColor,
                  fontFamily: "Poppins Bold",
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "3,240",
              style: TextStyle(
                  color: softwhiteColor, fontFamily: "Poppins", fontSize: 20),
            )
          ],
        ),
        CircleAvatar(
          minRadius: 30,
          maxRadius: 50,
          backgroundImage: AssetImage("assets/profiles/tamer.jpg"),
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Takipçiler",
              style: TextStyle(
                  color: softwhiteColor,
                  fontFamily: "Poppins Bold",
                  fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "2,780",
              style: TextStyle(
                  color: softwhiteColor, fontFamily: "Poppins", fontSize: 20),
            )
          ],
        ),
      ],
    ),
  );
}

Padding buildAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 32,
          color: softwhiteColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit),
          iconSize: 28,
          color: softwhiteColor,
        )
      ],
    ),
  );
}
