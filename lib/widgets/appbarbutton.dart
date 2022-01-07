import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  //const AppBarButton({Key? key}) : super(key: key);
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color? iconColor;
  AppBarButton(
      {required this.buttonIcon, required this.buttonAction, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
        ),
      ),
    );
  }
}
