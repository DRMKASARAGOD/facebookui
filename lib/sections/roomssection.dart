import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomsSection extends StatelessWidget {
  const RoomsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: strell,
            displayStatus: false,
          ),
          Avatar(
            displayImage: sujithbhakthan,
            displayStatus: true,
          ),
          Avatar(
            displayImage: raj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammooty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mithunath,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vinayakan,
            displayStatus: true,
          ),
          Avatar(
            displayImage: fishingfreak,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            width: 1.0,
            color: (Colors.blue[100])!,
          ),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text('Create\nRoom'),
      ),
    );
  }
}
