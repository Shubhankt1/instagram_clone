import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

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
