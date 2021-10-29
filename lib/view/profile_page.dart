import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
<<<<<<< HEAD
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

=======
  
>>>>>>> 240c97f44bf34cf709fc6cc7e3bb6d3ec5e864af
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

<<<<<<< HEAD
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
=======
Row buildRowButton() {
  var pressAttention = false;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
        onPressed: () {
        },
        child: Text("Görsel",
            style: TextStyle(
                fontFamily: "Poppins", fontSize: 16, color: darkColor)),
        style: ElevatedButton.styleFrom(
          shadowColor: softwhiteColor.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          minimumSize: Size(110, 30),
          //primary: softwhiteColor,
          elevation: 5,
          primary: pressAttention ? darkColor : softwhiteColor,
>>>>>>> 240c97f44bf34cf709fc6cc7e3bb6d3ec5e864af
        ),
        minimumSize: Size(110, 30),
        primary: softwhiteColor,
        elevation: 5,
        //primary: pressAttention ? kPrimaryColor : darkColor,
      ),
<<<<<<< HEAD
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
=======
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Yazı",
          style: TextStyle(fontFamily: "Poppins", fontSize: 16,color: softwhiteColor),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1.0, color: softwhiteColor,),
          shadowColor: Colors.white.withOpacity(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          minimumSize: Size(110, 30),
          elevation: 5,
         // primary: darkColor,
          primary: pressAttention ? softwhiteColor : darkColor,
        ),
      ),
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Anket",
          style: TextStyle(fontFamily: "Poppins", fontSize: 16,color: softwhiteColor),
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1.0, color: softwhiteColor,),
          shadowColor: Colors.white.withOpacity(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          minimumSize: Size(110, 30),
          elevation: 5,
          //primary: darkColor,
          primary: pressAttention ? softwhiteColor : darkColor,
        ),
      ),
    ],
  );
}

Widget buildAppBar(BuildContext context) {
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
>>>>>>> 240c97f44bf34cf709fc6cc7e3bb6d3ec5e864af
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
