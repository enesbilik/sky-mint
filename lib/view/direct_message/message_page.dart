import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/user_model.dart';
import 'package:sky_mint/view/direct_message/chat_page.dart';
import 'package:sky_mint/widgets/app_bar.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: darkColor,
          onPressed: () {},
          child: Icon(Icons.message_rounded),
        ));
  }

  Widget buildBody() {
    return ListView.builder(
      itemCount: listOfUser.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: buildProfilePhoto(index),
          title: Text(
            listOfUser[index].name,
            style: TextStyle(fontFamily: "Pattaya"),
          ),
          subtitle: buildSubtitle(index),
          trailing: buildTrailing(index),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChatPage(index)));
          },
        );
      },
    );
  }

  CircleAvatar buildProfilePhoto(int index) {
    return CircleAvatar(
      backgroundImage:
          AssetImage("assets/profiles/${listOfUser[index].profilePhoto}"),
    );
  }

  Widget buildSubtitle(int index) {
    return Row(
      children: [
        Visibility(
          visible: listOfUser[index].isChecked,
          child: Icon(Icons.check, size: 22),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          listOfUser[index].lastMessage,
          style: TextStyle(fontFamily: "Pattaya", fontSize: 15),
        ),
      ],
    );
  }

  Widget buildTrailing(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          listOfUser[index].lastMessageTime,
          style: TextStyle(
              fontSize: 14, color: Colors.black87, fontFamily: "Pattaya"),
        ),
        SizedBox(
          height: 1,
        ),
        Visibility(
          visible: listOfUser[index].lastNumberOfMessage != 0,
          child: Container(
            margin: EdgeInsets.only(top: 2),
            child: Center(
              child: Text(
                "${listOfUser[index].lastNumberOfMessage}",
                style: TextStyle(
                    color: Colors.white, fontSize: 12, fontFamily: "Pattaya"),
              ),
            ),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.green[700]),
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: darkColor,
      title: const Text(
        "Yıldız Mesaj",
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: "Pattaya", color: softwhiteColor),
      ),
      actions: [
        buildActionButton(Icons.search, 26, () {}),
        buildActionButton(Icons.more_vert, 26, () {}),
      ],
    );
  }
}
