import 'package:facebook/assets.dart';
import 'package:facebook/widget/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: tovino,
            story: tovino,
            createStoryStatus: true,
            labelText: 'Add to story',
          ),
          StoryCard(
            avatar: saniya,
            story: saniya,
            createStoryStatus: false,
            labelText: 'Add to story',
            displayBorder: true,
          ),
          StoryCard(
            avatar: rajeesha,
            story: rajeesha,
            createStoryStatus: false,
            labelText: 'Add to story',
            displayBorder: true,
          ),
          StoryCard(
            avatar: suma,
            story: suma,
            createStoryStatus: false,
            labelText: 'Add to story',
            displayBorder: true,
          ),
          StoryCard(
            avatar: aishu,
            story: aishu,
            createStoryStatus: false,
            labelText: 'Add to story',
            displayBorder: true,
          ),
          StoryCard(
            avatar: appu,
            story: appu,
            createStoryStatus: false,
            labelText: 'Add to story',
            displayBorder: true,
          )
        ],
      ),
    );
  }
}
