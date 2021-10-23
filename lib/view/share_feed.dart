// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class ShareFeed extends StatefulWidget {
  const ShareFeed({Key? key}) : super(key: key);

  @override
  State<ShareFeed> createState() => _ShareFeedState();
}

class _ShareFeedState extends State<ShareFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          buildTextField(),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: darkColor.withOpacity(0.5),
                ),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color: darkColor,
                  icon: Icon(
                    Icons.photo,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: darkColor,
                  icon: Icon(
                    Icons.gif_outlined,
                    size: 34,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: darkColor,
                  icon: Icon(
                    Icons.poll_outlined,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: darkColor,
                  icon: Icon(
                    Icons.location_on_outlined,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField() {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      minLines: 6,
      maxLength: 240,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black45),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black45),
        ),
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Icon(Icons.drive_file_rename_outline_sharp),
        ),
        hintText: "Ne söylemek istersiniz?",
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        buildShareButton(),
      ],
    );
  }

  Widget buildShareButton() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        top: 7,
        bottom: 7,
      ),
      child: MaterialButton(
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          minWidth: 100,
          color: darkColor,
          onPressed: () {},
          child: Text("Share", textScaleFactor: 1.12)),
    );
  }
}
