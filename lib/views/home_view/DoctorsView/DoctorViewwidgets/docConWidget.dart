import 'package:flutter/material.dart';

class DocConWidget extends StatelessWidget {
  String txt;
  String txt1;
  String txt2;
  String txt3;
  String imagePath;

  DocConWidget({super.key,
    required this.txt,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.imagePath,


  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 10),
          Text(txt, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(txt1, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 15,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.green, size: 14),
                      SizedBox(width: 5,),
                      Text(txt2 , style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ],
                  )),
              SizedBox(width: 5,),
              Text(txt3 , style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),

        ],
      ),
    );
  }
}
