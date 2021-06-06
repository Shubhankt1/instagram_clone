import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utility.dart';

import 'package:instagram_clone/widgets/search_bar.dart';
import 'package:instagram_clone/constant/search_json.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBar(),
          Expanded(
            child: buildGridView(searchImages),
          ),
        ],
      ),
    );
  }
}
