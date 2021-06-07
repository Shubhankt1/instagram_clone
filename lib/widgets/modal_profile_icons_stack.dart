import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';
import 'package:instagram_clone/constant/story_json.dart';

class ModalProfileIconsStack extends StatelessWidget {
  const ModalProfileIconsStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 40;
    return Container(
      width: 130,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 15,
            child: Container(
              width: iconSize + 5.0,
              height: iconSize + 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildProfileIcon(iconSize, iconSize,
                    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
              ),
            ),
          ),
          Container(
            width: iconSize + 5.0,
            height: iconSize + 5.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: buildProfileIcon(iconSize, iconSize,
                  "https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
            ),
          ),
          Positioned(
            left: 15,
            child: Container(
              width: iconSize + 5.0,
              height: iconSize + 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildProfileIcon(iconSize, iconSize, profile),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
