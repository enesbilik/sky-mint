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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10,
        ),
        child: Column(
          children: const [
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 5,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 76.0),
                  child: Icon(Icons.closed_caption_sharp),
                ),
                hintText: "Ne söylemek istersiniz?",
                border: InputBorder.none,
              ),
            ),
          ],
        ),
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
