import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';
import 'package:instagram_clone/constant/story_json.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 85.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: iconSize + 3.0,
            height: iconSize + 3.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: storyBorderColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: buildProfileIcon(iconSize, iconSize, profile),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 15),
                buildProfileStatColumn("Posts", 8),
                SizedBox(width: 25),
                buildProfileStatColumn("Followers", 606),
                SizedBox(width: 25),
                buildProfileStatColumn("Following", 170),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
