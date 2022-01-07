import 'package:facebookui/assets.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  // const Avatar({Key? key}) : super(key: key);
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double radius;
  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.radius = 25});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: displayBorder
                    ? Border.all(color: Colors.blueAccent, width: 3)
                    : Border()),
            padding: EdgeInsets.only(left: 4, right: 4),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: ExactAssetImage(displayImage),
            )),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1.0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
// ClipRRect(
//             borderRadius: BorderRadius.circular(100),
//             child: Image.asset(displayImage, width: 60, fit: BoxFit.fill),
//           ),