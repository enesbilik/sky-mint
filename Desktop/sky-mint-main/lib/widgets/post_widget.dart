// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/post_model.dart';

class BuildPost extends StatefulWidget {
  PostModel post;
  BuildPost(this.post);

  @override
  State<BuildPost> createState() => _BuildPostState();
}

class _BuildPostState extends State<BuildPost> {
  String defaultImage = "assets/ytu_pp.png";
  bool isStar = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          tileColor: Colors.white,
          title: buildPostTitle(widget.post),
          subtitle: buildPostSubtitle(widget.post),
          leading: buildPostProfileImage(widget.post),
          trailing: buildPostMoreIcon(),
        ),
        Divider(
          thickness: 0.1,
          height: 0.1,
          color: blackColor.withOpacity(0.5),
        ),
        buildPostImage(widget.post),
        Divider(
          thickness: 0.1,
          height: 0.1,
          color: blackColor.withOpacity(0.5),
        ),
        buildPostText(widget.post),
        buildPostIcons(),
        Divider(
          thickness: 0.4,
          height: 0.4,
          color: blackColor.withOpacity(0.5),
        ),
      ],
    );
  }

  Widget buildPostIcons() {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isStar = !isStar;
                  //debugPrint(isStar.toString());
                });
              },
              icon: Icon(
                !isStar ? Icons.star_border : Icons.star_outlined,
                size: 32,
                color: blackColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.messenger_outline,
                size: 28,
                color: blackColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                size: 28,
                color: blackColor,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                size: 24,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPostImage(PostModel post) {
    if (post.image != null) {
      return GestureDetector(
        onDoubleTap: () {
          setState(() {
            isStar = !isStar;
            //debugPrint(isStar.toString());
          });
        },
        child: Image.asset(
          post.image!,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      );
    }
    return SizedBox();
  }

  Widget buildPostMoreIcon() {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      icon: Icon(
        Icons.more_vert,
        color: blackColor,
      ),
      onPressed: () {},
    );
  }

  Widget buildPostProfileImage(PostModel post) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black87, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(360),
          child: CircleAvatar(
            backgroundColor: softwhiteColor,
            child: Image.asset(
              post.profilePhoto ?? defaultImage,
              fit: BoxFit.scaleDown,
            ),
            //backgroundImage: AssetImage(post.profilePhoto ?? defaultImage, ),
          ),
        ),
      ),
    );
  }

  Widget buildPostSubtitle(PostModel post) {
    return Text(
      post.subTitle,
      style: TextStyle(color: kPrimaryColor, fontFamily: "Poppins"),
    );
  }

  Widget buildPostTitle(PostModel post) {
    return Text(
      post.title,
      style: TextStyle(color: blackColor, fontFamily: "Poppins Bold"),
    );
  }

  Widget buildPostText(PostModel post) {
    if (post.context != null) {
      return Wrap(
        direction: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                post.context ?? "",
                style: TextStyle(
                  fontSize: 17,
                  height: 1.3,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ),
        ],
      );
    }
    return SizedBox();
  }
}

//abi bunlar hep umut için
