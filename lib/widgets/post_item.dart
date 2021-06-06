import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/post_toolbar.dart';
import 'package:instagram_clone/widgets/post_action_bar.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.post,
  }) : super(key: key);

  final post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: PostToolbar(post: post),
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(post["postImg"]),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onDoubleTap: () {},
              ),
            ),
            Visibility(
              visible: false,
              child: SvgPicture.asset(
                "assets/images/loved_icon.svg",
                color: white,
                width: 80,
              ),
            ),
          ],
        ),
        PostActionbar(post: post)
      ],
    );
  }
}
