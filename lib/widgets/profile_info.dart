import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "SHUBHANK",
            style: TextStyle(
              color: white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Working full time as Family Disappointment",
            style: TextStyle(
              height: 1.5,
              color: white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            child: TextButton(
              onPressed: () {},
              child: Text("Edit Profile"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                foregroundColor: MaterialStateProperty.all(white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: BorderSide(color: white.withOpacity(0.3), width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
