import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPostName = ["Nasa", "Orta Bahçe", "Taş Bina"];
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

          return buildPostItem(_index);
        },
      ),
    );
  }

  Widget buildPostItem(int index) {
    String _imageUrl = "assets/images/post_images/post_image$index.jpeg";

    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          tileColor: softwhiteColor,
          title: Text(
            listOfPostName[index],
            style: TextStyle(color: Colors.black,fontFamily: "Pattaya"),
          ),
          subtitle: Text(
            listOfPostName[index],
            style: TextStyle(color: kPrimaryColor,fontFamily: "Pattaya"),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(_imageUrl),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(Icons.more_vert,color: Colors.black,),
            onPressed: () {},
          ),
        ),
        Image.asset(
          _imageUrl,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        Container(
          color: softwhiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    index % 2 == 0 ? Icons.star_border : Icons.star_outlined,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.messenger_outline,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      Divider(
                thickness: 0.2,
                height: 0.2,
                color: Colors.black,
              ),
      ],
    );
  }
}
