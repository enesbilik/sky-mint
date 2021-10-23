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
          tileColor: softwhiteColor,
          title: buildPostTitle(widget.post),
          subtitle: buildPostSubtitle(widget.post),
          leading: buildPostProfileImage(widget.post),
          trailing: buildPostMoreIcon(),
        ),
        buildPostImage(widget.post),
        buildPostText(widget.post),
        buildPostIcons(),
        Divider(
          thickness: 0.2,
          height: 0.2,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget buildPostIcons() {
    return Container(
      color: softwhiteColor,
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
    );
  }

  Widget buildPostImage(PostModel post) {
    if (post.image != null) {
      return Image.asset(
        post.image!,
        width: double.infinity,
        fit: BoxFit.contain,
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
        color: Colors.black,
      ),
      onPressed: () {},
    );
  }

  Widget buildPostProfileImage(PostModel post) {
    return CircleAvatar(
      backgroundImage: AssetImage(post.profilePhoto ?? defaultImage),
    );
  }

  Widget buildPostSubtitle(PostModel post) {
    return Text(
      post.subTitle,
      style: TextStyle(color: kPrimaryColor, fontFamily: "Poppins Light"),
    );
  }

  Widget buildPostTitle(PostModel post) {
    return Text(
      post.title,
      style: TextStyle(color: Colors.black, fontFamily: "Poppins Bold"),
    );
  }

  Widget buildPostText(PostModel post) {
    if (post.context != null) {
      return Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            color: softwhiteColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
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
