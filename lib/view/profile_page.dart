import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var folTextStyle = TextStyle(
    color: softwhiteColor,
    fontFamily: "Poppins Bold",
    fontSize: 18,
  );

  var folNoStyle = TextStyle(
    color: softwhiteColor,
    fontFamily: "Poppins Bold",
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: darkColor,
      backgroundColor: darkColor,
      appBar: buildAppBar(),
      body: buildBody(deviceSize),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      //backgroundColor: darkColor,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.edit,
            size: 28,
          ),
        ),
      ],
    );
  }

  Widget buildBody(Size deviceSize) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
            height: deviceSize.height * 0.27,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildFolText("Takip Edilen", "3,240"),
                    buildProfileImage(),
                    buildFolText("Takipçiler", "2,235"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildNameContainer(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildChoseButton("Görsel"),
                    buildChoseButton("Yazı"),
                    buildChoseButton("Anket"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChoseButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text,
          style:
              TextStyle(fontFamily: "Poppins", fontSize: 16, color: darkColor)),
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
    );
  }

  Column buildNameContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Tamer Yılmaz",
          style: TextStyle(
            color: softwhiteColor,
            fontFamily: "Poppins Bold",
            fontSize: 20,
          ),
        ),
        Text(
          "#someting",
          style: TextStyle(
            color: softwhiteColor,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Padding buildProfileImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: CircleAvatar(
        minRadius: 45,
        maxRadius: 50,
        backgroundImage: AssetImage("assets/profiles/tamer.jpg"),
      ),
    );
  }

  Widget buildFolText(String title, String number) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: folTextStyle,
        ),
        Text(
          number,
          style: folNoStyle,
        ),
      ],
    );
  }
}
