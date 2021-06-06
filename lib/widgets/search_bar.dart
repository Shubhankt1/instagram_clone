import 'package:flutter/cupertino.dart';

import 'package:instagram_clone/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
      child: CupertinoSearchTextField(
        backgroundColor: textFieldBackground,
        itemColor: white.withOpacity(0.3),
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
