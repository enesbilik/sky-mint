import 'package:flutter/material.dart';
import 'package:sky_mint/constants/colors.dart';
import 'package:sky_mint/models/user_model.dart';

class ChatPage extends StatelessWidget {
  int userIndex;
  ChatPage(this.userIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyUser selectedUser = listOfUser[userIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkColor,
        centerTitle: false,
        title: buildAppBarText(selectedUser),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }

  Widget buildAppBarText(MyUser selectedUser) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage("assets/profiles/${selectedUser.profilePhoto}"),
        ),
        SizedBox(
          width: 16,
        ),
        Center(child: Text(selectedUser.name)),
      ],
    );
  }
}
