import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 68,
            height: 68,
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
              child: buildProfileIcon(65.0, 65.0, item["img"]),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 70,
            child: Text(
              item['name'],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
