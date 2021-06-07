import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/add_account_modal.dart';

getAppBar(index, context) {
  if (index == 0) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            "assets/images/Instagram_logo.svg",
            color: white,
            width: 146,
            height: 52,
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/upload_icon.svg",
                width: 30,
              ),
              SizedBox(width: 20),
              SvgPicture.asset(
                "assets/images/message_icon.svg",
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  } else if (index == 1)
    return null;
  else if (index == 2)
    return null;
  else if (index == 3) {
    return AppBar(
      backgroundColor: appBarColor,
      automaticallyImplyLeading: false,
      title: Text(
        "Activity",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 28,
        ),
      ),
      centerTitle: false,
    );
  } else if (index == 4) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.lock),
              CupertinoButton(
                // style: TextButton.styleFrom(primary: white),
                child: Row(
                  children: [
                    Text(
                      "heyiamshubhank",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: white),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 20,
                      color: white,
                    ),
                  ],
                ),
                onPressed: () {
                  print("pressed");
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) => AddAccountModal(),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/upload_icon.svg",
                width: 30,
              ),
              SizedBox(width: 20),
              SvgPicture.asset(
                "assets/images/menu.svg",
                width: 30,
                color: white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
