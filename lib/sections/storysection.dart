import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  //const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to story',
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: true,
            displayBorder: false,
          ),
          StoryCard(
            labelText: 'Mohanlal',
            avatar: mohanlal,
            story: mohanlal,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Raj',
            avatar: raj,
            story: raj,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Fishing freak',
            avatar: fishingfreak,
            story: fishingfreak,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
