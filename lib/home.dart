import 'package:facebookui/assets.dart';
import 'package:facebookui/sections/headerbuttonsection.dart';
import 'package:facebookui/sections/roomssection.dart';
import 'package:facebookui/sections/statusSection.dart';
import 'package:facebookui/sections/storysection.dart';
import 'package:facebookui/widgets/appBarButton.dart';
import 'package:facebookui/widgets/postcrad.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {},
              iconColor: Colors.black,
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {},
              iconColor: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            RoomsSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            StorySection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
              shareCount: '30k',
              likeCount: '1k',
              commentCount: '10k',
              avatar: andy,
              name: "Andy Jassy",
              publishedAt: "5h",
              postTitle: "At Amazon",
              PostImage: andy,
              showBlueTick: true,
            ),
            PostCard(
              shareCount: '31k',
              likeCount: '2k',
              commentCount: '12k',
              avatar: raj,
              name: "Raj",
              publishedAt: "5h",
              postTitle: "New Look",
              PostImage: raj,
              showBlueTick: true,
            ),
            PostCard(
              shareCount: '31k',
              likeCount: '2k',
              commentCount: '12k',
              avatar: zuck,
              name: "Mark zuckerberg",
              publishedAt: "3h",
              postTitle: "My Fav Indian Actor",
              PostImage: mohanlal,
              showBlueTick: true,
            ),
            PostCard(
              shareCount: '12k',
              likeCount: '2k',
              commentCount: '1k',
              avatar: sujithbhakthan,
              name: "Sujith Bhakthan",
              publishedAt: "4h",
              postTitle: "At Manali",
              PostImage: sujithbhakthan,
              showBlueTick: true,
            ),
            PostCard(
              shareCount: '23k',
              likeCount: '21k',
              commentCount: '10k',
              avatar: strell,
              name: "Strell",
              publishedAt: "10h",
              postTitle: "Ride Safe Guys",
              PostImage: strell,
              showBlueTick: true,
            ),
          ],
        ),
      ),
    );
  }
}
