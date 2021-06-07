import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';
import 'package:instagram_clone/constant/highlights_json.dart';
import 'package:instagram_clone/widgets/add_highlight_button.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    Key? key,
    required this.iconSize,
  }) : super(key: key);

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(highlights.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        width: iconSize + 3.0,
                        height: iconSize + 3.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: white.withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: buildProfileIcon(
                              iconSize, iconSize, highlights[index]["img"]),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        highlights[index]['name'],
                        overflow: TextOverflow.ellipsis,
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            AddHighlightButton(),
          ],
        ),
      ),
    );
  }
}
