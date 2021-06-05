import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:instagram_clone/theme.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getBottomNav(),
    );
  }

  Widget getBottomNav() {
    List<String> bottomNavItems = [
      "assets/images/home_active_icon.svg",
      "assets/images/search_active_icon.svg",
      "assets/images/upload_active_icon.svg",
      "assets/images/love_active_icon.svg",
      "assets/images/account_active_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(color: appFooterColor),
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
                ),
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
