import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';
import 'package:instagram_clone/constant/story_json.dart';

class PostActionbar extends StatelessWidget {
  const PostActionbar({
    Key? key,
    required this.post,
  }) : super(key: key);

  final post;

  @override
  Widget build(BuildContext context) {
    List<String> postActions = [
      post["isLoved"]
          ? "assets/images/loved_icon.svg"
          : "assets/images/love_icon.svg",
      "assets/images/comment_icon.svg",
      "assets/images/message_icon.svg",
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(postActions.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(
                      postActions[index],
                      width: 27,
                    ),
                  );
                }),
              ),
              SvgPicture.asset("assets/images/save_icon.svg", width: 27),
            ],
          ),
          SizedBox(height: 12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Liked by ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      post["isLoved"] ? "heyiamshubhank " : "panhchaneath_ung ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "others",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: post["name"],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: post["caption"],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Text(
            "View ${post["commentCount"]} comments",
            style: TextStyle(
              fontSize: 15,
              color: white.withOpacity(0.4),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  buildProfileIcon(30.0, 30.0, profile),
                  SizedBox(width: 5),
                  Text(
                    "Add a comment...",
                    style: TextStyle(
                      fontSize: 15,
                      color: white.withOpacity(0.4),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "❤️",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "🍻",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.add_circle_outline,
                    color: white,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            post["timeAgo"],
            style: TextStyle(
              fontSize: 15,
              color: white.withOpacity(0.4),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
