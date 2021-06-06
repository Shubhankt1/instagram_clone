import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/account.dart';
import 'package:instagram_clone/screens/activity.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/screens/search.dart';
import 'package:instagram_clone/widgets/app_bar.dart';
import 'package:instagram_clone/screens/homepage.dart';

import 'widgets/bottomNavbar.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(currentIndex),
      body: getBody(currentIndex),
      backgroundColor: Colors.black,
      bottomNavigationBar: getBottomNav(currentIndex, updateTab),
    );
  }

  getBody(index) {
    List<Widget> pages = [
      HomePage(),
      SearchScreen(),
      Center(
        child: Text(
          "Reels",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: white,
          ),
        ),
      ),
      ActivityScreen(),
      AccountScreen(),
    ];
    return IndexedStack(
      index: index,
      children: pages,
    );
  }

  updateTab(index) {
    setState(() {
      currentIndex = index;
    });
  }
}
