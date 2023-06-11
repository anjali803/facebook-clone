import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';

class ChatRoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            DisplayImage: tovino,
            displayStatus: true,
          ),
          Avatar(DisplayImage: fahadh, displayStatus: true),
          Avatar(DisplayImage: prithviraj, displayStatus: true),
          Avatar(DisplayImage: mohanla, displayStatus: true),
          Avatar(DisplayImage: unni, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
          size: 35,
        ),
        label: const Text(
          "Chat room",
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
        onPressed: () {
          print("chatroom button clicked");
        },
        style: TextButton.styleFrom(
          shape: StadiumBorder(),
          foregroundColor: Colors.blue,
        ),
      ),
    );
  }
}
