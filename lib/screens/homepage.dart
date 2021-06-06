import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_item.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/story_item.dart';
import 'package:instagram_clone/constant/post_json.dart';
import 'package:instagram_clone/constant/story_json.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody(context);
  }

  Widget getBody(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(stories.length, (index) {
              return StoryItem(
                key: Key(stories[index]['id'].toString()),
                item: stories[index],
              );
            }),
          ),
        ),
        Divider(color: white),
        Expanded(
          child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostItem(post: posts[index]);
              }),
        ),
      ],
    );
  }
}
