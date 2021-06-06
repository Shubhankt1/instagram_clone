import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:instagram_clone/theme.dart';

Widget getBottomNav(int currentIndex, Function selectTab) {
  List<String> bottomNavItems = [
    currentIndex == 0
        ? "assets/images/home_active_icon.svg"
        : "assets/images/home_icon.svg",
    currentIndex == 1
        ? "assets/images/search_active_icon.svg"
        : "assets/images/search_icon.svg",
    currentIndex == 2
        ? "assets/images/reels_icon.svg"
        : "assets/images/reels_icon.svg",
    currentIndex == 3
        ? "assets/images/love_active_icon.svg"
        : "assets/images/love_icon.svg",
    currentIndex == 4
        ? "assets/images/account_active_icon.svg"
        : "assets/images/account_icon.svg",
  ];
  return Container(
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      color: appFooterColor,
      border: Border(top: BorderSide(color: white, width: 0.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          bottomNavItems.length,
          (index) {
            return InkWell(
              child: SvgPicture.asset(
                bottomNavItems[index],
                width: 27,
                color: white,
              ),
              onTap: () {
                selectTab(index);
              },
            );
          },
        ),
      ),
    ),
  );
}
