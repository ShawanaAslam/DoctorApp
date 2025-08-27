
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String txt;
  String txt1;
  String image;
  ProfileCard({super.key,
  required this .txt,
    required this.txt1,
    required this.image

  });

  @override
  Widget build(BuildContext context) {
    return // Profile Card
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:  Colors.grey.shade200,
          //Colors.white,
          borderRadius: BorderRadius.circular(12),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.shade300,
          //     blurRadius: 5,
          //     spreadRadius: 1,
          //   ),
          // ],
        ),
        child: Row(
          children: [
             CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  image), // random user img
            ),
             SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 txt,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  txt1,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );
  }
}
