import 'package:facebook/assets.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned(
              child: createStoryStatus
                  ? circularButton(
                      buttonIcon: Icons.add,
                      IconColor: Colors.blue,
                      buttonAction: () {
                        print("create new status");
                      },
                    )
                  : Avatar(
                      DisplayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                      width: 40,
                      heigt: 40,
                    )),
          Positioned(
            bottom: 4,
            left: 10,
            child: Text(
              // labelText ,
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
