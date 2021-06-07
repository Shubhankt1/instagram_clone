import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:line_icons/line_icon.dart';

List<Map<String, dynamic>> menuItems = [
  {
    "name": "Settings",
    "icon": LineIcon.userCog(
      color: white,
      size: 30,
    )
  },
  {
    "name": "Archive",
    "icon": LineIcon.history(
      color: white,
      size: 30,
    )
  },
  {
    "name": "Your activity",
    "icon": Icon(
      Icons.history_toggle_off,
      color: white,
      size: 30,
    )
  },
  {
    "name": "QR Code",
    "icon": Icon(
      Icons.qr_code_scanner_rounded,
      color: white,
      size: 30,
    )
  },
  {
    "name": "Saved",
    "icon": LineIcon.bookmark(
      color: white,
      size: 30,
    )
  },
  {
    "name": "Close friends",
    "icon": LineIcon.alternateListAlt(
      color: white,
      size: 30,
    )
  },
  {
    "name": "Discover people",
    "icon": Icon(
      Icons.person_add_outlined,
      color: white,
      size: 30,
    )
  },
  {
    "name": "COVID-19 Information Centre",
    "icon": Icon(
      Icons.coronavirus_outlined,
      color: white,
      size: 30,
    )
  },
];

Container buildProfileIcon(width, height, image) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black, width: 2),
      shape: BoxShape.circle,
      image: DecorationImage(
        image: NetworkImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}

GridView buildGridView(photos) {
  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(photos[index]), fit: BoxFit.cover),
          ),
        );
      });
}

Column buildProfileStatColumn(key, value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "$value",
        style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: white),
      ),
      SizedBox(height: 3),
      Text(
        "$key",
        style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white),
      ),
    ],
  );
}
