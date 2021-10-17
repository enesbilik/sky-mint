import 'package:flutter/material.dart';
import 'package:sky_mint/models/user_model.dart';
import 'package:sky_mint/widgets/app_bar.dart';

class ChatPage extends StatelessWidget {
  int userIndex;
  ChatPage(this.userIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyUser selectedUser = listOfUser[userIndex];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: buildAppBarText(selectedUser),
        actions: [
          buildActionButton(Icons.more_vert, 28, () {}),
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
          width: 14,
        ),
        Text(selectedUser.name),
      ],
    );
  }
}
