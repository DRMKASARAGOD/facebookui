import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  //const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dulquer,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'Whats on your mind?',
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
