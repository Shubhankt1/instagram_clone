import 'package:flutter/material.dart';

import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/modal_profile_icons_stack.dart';

class AddAccountModal extends StatelessWidget {
  const AddAccountModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: textFieldBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 15,
                  ),
                  child: Center(
                    child: ModalProfileIconsStack(),
                  ),
                ),
                Text(
                  "Keep up with a smaller group of friends",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Create another account to stay in touch with a group of your friends.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white.withOpacity(0.3),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 30,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      "Try a New Account",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: buttonFollowColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 0.0, color: white),
          TextButton(
            child: Text(
              "Add account",
              style: TextStyle(
                  color: buttonFollowColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
