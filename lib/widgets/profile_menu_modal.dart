import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class ProfileMenuModal extends StatelessWidget {
  const ProfileMenuModal({
    Key? key,
    required this.menuItems,
  }) : super(key: key);

  final List<Map<String, dynamic>> menuItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 0,
        top: 15,
        right: 0,
      ),
      decoration: BoxDecoration(
        color: textFieldBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: menuItems.length,
              itemBuilder: (context, index) => Card(
                elevation: 0,
                color: Colors.transparent,
                child: ListTile(
                  leading: menuItems[index]["icon"],
                  minLeadingWidth: 30,
                  title: Text(
                    menuItems[index]["name"],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),
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
