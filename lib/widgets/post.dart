import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';

class PostItem extends StatefulWidget {
  int index;
  PostItem(this.index, {Key? key}) : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  final listOfPostName = ["Nasa", "Orta Bahçe", "Taş Bina"];
  bool isStar = false;

  @override
  Widget build(BuildContext context) {
    String _imageUrl =
        "assets/images/post_images/post_image${widget.index}.jpeg";

    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          tileColor: softwhiteColor,
          title: buildPostTitle(),
          subtitle: buildPostSubtitle(),
          leading: buildPostProfileImage(_imageUrl),
          trailing: buildPostMoreIcon(),
        ),
        buildPostImage(_imageUrl),
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

  Widget buildPostImage(String _imageUrl) {
    return Image.asset(
      _imageUrl,
      width: double.infinity,
      fit: BoxFit.contain,
    );
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

  Widget buildPostProfileImage(String _imageUrl) {
    return CircleAvatar(
      backgroundImage: AssetImage(_imageUrl),
    );
  }

  Widget buildPostSubtitle() {
    return Text(
      listOfPostName[widget.index],
      style: TextStyle(color: kPrimaryColor, fontFamily: "Poppins Light"),
    );
  }

  Widget buildPostTitle() {
    return Text(
      listOfPostName[widget.index],
      style: TextStyle(color: Colors.black, fontFamily: "Poppins Bold"),
    );
  }
}
