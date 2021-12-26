import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 16,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF433452),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
