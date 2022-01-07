import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  //const HeaderButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButtonCus(
              buttonText: 'Live',
              buttonColor: Colors.red,
              buttonIcon: Icons.video_call),
          const VerticalDivider(
            thickness: 1,
          ),
          ElevatedButtonCus(
              buttonText: 'Photos',
              buttonColor: Colors.green,
              buttonIcon: Icons.photo_sharp),
          const VerticalDivider(
            thickness: 1,
          ),
          ElevatedButtonCus(
              buttonText: 'Room',
              buttonColor: Colors.purple,
              buttonIcon: Icons.video_call),
        ],
      ),
    );
  }

  Widget ElevatedButtonCus(
      {@required String? buttonText,
      @required Color? buttonColor,
      @required IconData? buttonIcon}) {
    return ElevatedButton.icon(
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0),
      onPressed: () {},
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText == null ? "" : buttonText,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
