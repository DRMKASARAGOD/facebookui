import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/appbarbutton.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  //const StoryCard({Key? key}) : super(key: key);
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;
  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = true,
      this.displayBorder = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            child: createStoryStatus
                ? AppBarButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {},
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    radius: 23,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
