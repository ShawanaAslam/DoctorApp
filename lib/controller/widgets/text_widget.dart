import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  String txt;
  FontWeight fntwt;
  double fntsze;
  Color clr;
 // Color? decclr;
  TextDecoration? decoration;

   TextWidget({super.key,
   required this.txt,this.clr=Colors.white,
     this.decoration,
   this.fntsze=16,
   //  this.decclr,
   this.fntwt=FontWeight.w800});


  @override
  Widget build(BuildContext context) {
    return Text(
      txt,style: TextStyle(color: clr,
        decoration: decoration??null,
        //decorationStyle:decclr??null,
        fontWeight: fntwt,
        fontSize: fntsze),
    );
  }
}
