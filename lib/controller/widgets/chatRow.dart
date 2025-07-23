
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatRow extends StatelessWidget {
  double hgt;
  double wdt;
  double left;
  double rgt;
  double botmlft;
  double botmrgt;
  String txt;
  Color txtclr;
  Color clr;
  String timetxt;
  MainAxisAlignment aligmnt;
  MainAxisAlignment aligmnt1;
  ChatRow({super.key,

  required this.hgt,
    required this.wdt,
    required this.clr,
    required this.txt,
    required this.aligmnt,
    required this.aligmnt1,
    required this.txtclr
    ,required this.botmlft,
    required this.botmrgt,
    required this.left,
    required this.rgt,
    required this.timetxt
  });

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Row(
          mainAxisAlignment: aligmnt,
         // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(width: 10,),
            Container(
              height:hgt,
              width: wdt,

              decoration: BoxDecoration(
                  color: clr,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(left),
                      topRight:  Radius.circular(rgt),
                      bottomLeft:  Radius.circular(botmlft),
                  bottomRight:Radius.circular(botmrgt), )

              ),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  TextWidget(txt:txt,
        clr: txtclr,
                    fntwt: FontWeight.w500,),
                ],
              ),
            ),
            SizedBox(width: 10,)
          ],
        ),
        Row(
          mainAxisAlignment:aligmnt1,
          children: [
            SizedBox(width: 10,),
            TextWidget(txt: timetxt,clr: Colors.black,fntsze: 12,fntwt: FontWeight.w400,),
            SizedBox(width: 5,),
            Icon(Icons.check,size: 14,),
            SizedBox(width: 10,),
          ],
        ),
      ],
    );
  }
}
