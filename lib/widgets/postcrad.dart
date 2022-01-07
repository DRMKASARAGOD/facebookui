import 'package:facebookui/assets.dart';
import 'package:facebookui/widgets/avatar.dart';
import 'package:facebookui/widgets/bluetick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  //const PostCard({Key? key}) : super(key: key);
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String PostImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postTitle,
      required this.PostImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        postCardHeader(),
        titleSection(),
        imageSection(),
        footerSection(),
        Divider(
          thickness: 1,
          color: Colors.grey[300],
        ),
        footerButton(),
        Divider(
          thickness: 10,
          color: Colors.grey[300],
        )
      ],
    ));
  }

  Widget titleSection() {
    return Container(
        padding: EdgeInsets.only(bottom: 7),
        child: Text(postTitle == null ? "" : postTitle,
            style: const TextStyle(color: Colors.black, fontSize: 16)));
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(width: 10),
          Icon(Icons.public, color: Colors.grey[700], size: 18)
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print('Open more menu');
          },
          icon: Icon(Icons.more_horiz, color: Colors.grey[700])),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 3),
      child: Image.asset(PostImage),
    );
  }

  Widget footerSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(Icons.thumb_up_sharp,
                        color: Colors.white, size: 10)),
                SizedBox(width: 5),
                displayText(likeCount),
              ],
            ),
            Container(
              child: Row(
                children: [
                  displayText(commentCount),
                  SizedBox(width: 5),
                  displayText('Comments'),
                  SizedBox(width: 5),
                  displayText(shareCount),
                  SizedBox(width: 5),
                  displayText('Shares'),
                  SizedBox(width: 10),
                  Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    radius: 12,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey[700]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget footerButton() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButtonCus(
              buttonText: 'Like',
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.thumb_up_sharp),
          const VerticalDivider(
            thickness: 1,
          ),
          ElevatedButtonCus(
              buttonText: 'Comment',
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.message_outlined),
          const VerticalDivider(
            thickness: 1,
          ),
          ElevatedButtonCus(
              buttonText: 'Share',
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.share_outlined),
        ],
      ),
    );
  }

  Widget displayText(@required String label) {
    return Text(label == null ? "" : label,
        style: TextStyle(color: Colors.grey[700], fontSize: 14));
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
