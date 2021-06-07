import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:instagram_clone/theme.dart';

class AddHighlightButton extends StatelessWidget {
  const AddHighlightButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 65;
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 10),
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
              child: Container(
                width: iconSize,
                height: iconSize,
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  shape: BoxShape.circle,
                  color: black,
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.add,
                    color: white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "New",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: white,
            ),
          ),
        ],
      ),
    );
  }
}
