
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
Color clr;
  String txt;
  String txt1;
  String txt2;
  IconData icon;
  CardWidget({super.key,
  required this.txt,
    required this.clr,
    required this.txt1,
    required this.txt2,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return   Card(

      margin: EdgeInsets.only(left: 0,right: 0,top: 12),
      child: Padding(
        padding:  EdgeInsets.all(14),
        child: Row(
          children: [
            // Avatar with notification dot
            Stack(

              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[300],
                  child: Icon(icon,color: clr,),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),

            // Title and Subtitle Texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(txt:
                      txt,
                        clr: Colors.black,
                        fntwt: FontWeight.bold,
                        fntsze: 16,
                      ),

                      TextWidget(txt:
                      txt1,
                        clr: Colors.grey,
                        fntsze: 13,
                      ),
                    ],
                  ),

                  SizedBox(height: 4),
                  TextWidget(txt:
                  txt2,
                    clr: Colors.grey,
                    fntsze: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
