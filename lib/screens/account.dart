import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/utility.dart';
import 'package:instagram_clone/constant/post_json.dart';
import 'package:instagram_clone/widgets/profile_info.dart';
import 'package:instagram_clone/widgets/profile_header.dart';
import 'package:instagram_clone/widgets/highlights_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return buildPostsTabs();
  }

  Widget buildPostsTabs() {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverList(
            delegate: SliverChildListDelegate([
              ProfileHeader(),
              ProfileInfo(),
              Highlights(iconSize: 65),
            ]),
          ),
        ],
        body: Column(
          children: [
            TabBar(
              indicatorColor: white,
              indicatorWeight: 1.0,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_on_outlined,
                    size: 26,
                  ),
                ),
                Tab(
                  icon: SvgPicture.asset(
                    "assets/images/instagram-tag.svg",
                    width: 24,
                    color: white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // buildGridView(myPosts),
                  buildGridView(posts.map((e) => e["postImg"]).toList()),
                  buildGridView(posts.map((e) => e["postImg"]).toList()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
