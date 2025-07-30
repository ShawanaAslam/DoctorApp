import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  String numberText;
   String subtitle;
   IconData icon;
   Color iconColor;
   Color backgroundColor;

StatsCard({
    super.key,
    required this.numberText,
    required this.subtitle,
    required this.icon,
  required this.iconColor,
  required this.backgroundColor,
    //this.iconColor = const Color(0xFF60CFFF),
    //this.backgroundColor = const Color(0xFFE6F7FF),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      width: 100, // adjust as needed
      padding: const EdgeInsets.only(left: 12,right: 12,bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Vertical strip with icon
          Container(
            height: 60,
           // width: 40,
            padding: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20) ),
            ),
            child: Icon(icon, color: iconColor, size: 30),
          ),
         // SizedBox(height: 10),
          Text(
            numberText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
