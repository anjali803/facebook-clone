import 'package:facebook/assets.dart';
import 'package:facebook/section/chatRoomSection.dart';
import 'package:facebook/section/headerButtonSection.dart';
import 'package:facebook/section/statusSection.dart';
import 'package:facebook/section/storySection.dart';
import 'package:facebook/widget/headerButton.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';
import 'widget/circularButton.dart';

class home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey,
  );

  Widget thickDivider = Divider(
    thickness: 8,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "facebook",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            circularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("BUTTON PRESSED");
              },
            ),
            circularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("BUTTON PRESSED");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                  buttonAction: () {
                    print("Go live");
                  },
                  buttonColor: Colors.red,
                  buttonIcon: Icons.video_call,
                  buttonText: "Room"),
              buttonTwo: headerButton(
                  buttonAction: () {
                    print("Take photo");
                  },
                  buttonColor: Colors.red,
                  buttonIcon: Icons.photo_library,
                  buttonText: "live"),
              buttonTree: headerButton(
                  buttonAction: () {
                    print("create room");
                  },
                  buttonColor: Colors.red,
                  buttonIcon: Icons.video_call,
                  buttonText: "room"),
            ),
            thickDivider,
            ChatRoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: tovino,
              name: "Tovino",
              publishedAt: "5h",
              postitle: "",
              postImage: tovino,
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "10k",
              shareCount: "5k",
            ),
            thickDivider,
            PostCard(
              avatar: tovino,
              name: "Tovino",
              publishedAt: "5h",
              postitle: "HAPPY BIRTHDAY RAJEESHA",
              postImage: rajeesha,
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "1k",
              shareCount: "5k",
            ),
            PostCard(
              avatar: rajeesha,
              name: "Rajeesh",
              publishedAt: "3h",
              postitle: "My new film",
              postImage: film,
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "1k",
              shareCount: "5k",
            ),
            PostCard(
              avatar: prithviraj,
              name: "Prithviraj",
              publishedAt: "5h",
              postitle: caption,
              postImage: prithviraj,
              showBlueTick: true,
              likeCount: "10k",
              commentCount: "1k",
              shareCount: "5k",
            ),
          ],
        ),
      ),
    );
  }
}
