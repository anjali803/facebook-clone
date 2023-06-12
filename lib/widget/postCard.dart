import 'package:facebook/section/headerButtonSection.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/blueTick.dart';
import 'package:flutter/material.dart';

import 'headerButton.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postitle,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        PostCardHeader(),
        TitleSection(),
        ImageSection(),
        FooterSection(),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        HeaderButtonSection(
          buttonOne: headerButton(
            buttonAction: () {
              print("Like this post");
            },
            buttonColor: Colors.grey,
            buttonIcon: Icons.thumb_up_outlined,
            buttonText: "like",
          ),
          buttonTwo: headerButton(
            buttonAction: () {
              print("comment this post");
            },
            buttonColor: Colors.grey,
            buttonIcon: Icons.message,
            buttonText: "comment",
          ),
          buttonTree: headerButton(
            buttonAction: () {
              print("share this post");
            },
            buttonColor: Colors.grey,
            buttonIcon: Icons.share_outlined,
            buttonText: "share",
          ),
        ),
      ]),
    );
  }

  Widget FooterSection() {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            //first row child
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 9,
                ),
              ),
              displayText(label: likeCount),
            ],
          ),
        ),
        Container(
          child: Row(//second row child
              children: [
            displayText(label: commentCount),
            SizedBox(width: 5),
            displayText(label: "comments"),
            SizedBox(width: 5),
            displayText(label: shareCount),
            SizedBox(width: 5),
            displayText(label: "shares"),
            SizedBox(width: 10),
            Avatar(
              DisplayImage: avatar,
              displayStatus: false,
              width: 25,
              heigt: 25,
            ),
            IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {
                print("drop down this arrow");
              },
            )
          ]),
        )
      ]),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey),
    );
  }

// ----------------------IMAGESECCTION-----------------------------
  Widget ImageSection() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Image.asset(
        postImage,
      ),
    );
  }

// ---------------------TITLESECTION------------------
  Widget TitleSection() {
    return postitle != null && postitle != ""
        ? Container(
            child: Text(
              postitle == null ? "" : postitle,
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          )
        : SizedBox();
  }

//-----------------POSTCARDSECTION---------------------------
  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(
        DisplayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(children: [
        Text(publishedAt == null ? "" : publishedAt),
        SizedBox(width: 10),
        Icon(
          Icons.public,
          color: Colors.grey[700],
          size: 15,
        )
      ]),
      trailing: IconButton(
        onPressed: () {
          print("open more menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
