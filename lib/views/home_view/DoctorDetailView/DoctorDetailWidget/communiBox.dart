
import 'package:flutter/material.dart';

class CommunicationBox extends StatelessWidget {
   IconData icon;
   String txt;
   String txt1;
   Color bgColor;
   Color icnColor;
   CommunicationBox({
    super.key,
     required this.icnColor,
    required this.icon,
    required this.txt,
     required this.txt1,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(icon, color: icnColor),
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txt, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                Text(txt1, style: TextStyle(fontSize: 13)),
              ],
            ),
          ],
        ),

      ],
    );
  }
}
