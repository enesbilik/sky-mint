import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/post_model.dart';
import 'package:sky_mint/widgets/post_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<PostModel> listOfTamerPosts = [];

  @override
  void initState() {
    listOfTamerPosts.addAll(
      listOfPost.where(
        (post) => post.title == "Tamer Yılmaz" && post.image != null,
      ),
    );
    super.initState();
  }

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
      bottom: false,
      child: SizedBox(
        width: deviceSize.width,
        height: deviceSize.height,
        child: Column(
          children: [
            buildTopContainer(),
            buildUserContentContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildTopContainer() {
    return Container(
      decoration: BoxDecoration(
        color: darkColor,
      ),
      height: 250,
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
              buildChoseButton("Görsel  (5)"),
              buildChoseButton("Yazı  (1)"),
              buildChoseButton("Anket  (3)"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildUserContentContainer() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: softwhiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: listOfTamerPosts.length,
            itemBuilder: (BuildContext context, int index) {
              return BuildPost(listOfTamerPosts[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildChoseButton(String text) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        color: softwhiteColor,
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
          "#KulüpleriyleLiderYTÜ",
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
        backgroundColor: Colors.black.withOpacity(0.1),
        radius: 60,
        child: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("assets/profiles/tamer.jpg"),
        ),
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
