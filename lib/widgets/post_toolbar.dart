import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';

class PostToolbar extends StatelessWidget {
  const PostToolbar({
    Key? key,
    required this.post,
  }) : super(key: key);

  final post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            buildProfileIcon(40.0, 40.0, post["profileImg"]),
            SizedBox(width: 8),
            Text(
              post["name"],
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        IconButton(
          icon: LineIcon.horizontalEllipsis(color: white),
          onPressed: () {},
        ),
      ],
    );
  }
}
