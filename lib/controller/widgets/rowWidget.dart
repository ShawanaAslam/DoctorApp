
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {

  String txt;
  Color? clr;
  Color? clr1;
  String txt1;
  VoidCallback ? ontp;
 //IconData? icn,
   RowWidget({super.key,
    // this.icn,
     this.clr=Colors.grey,
     this.clr1=Colors.black,
   required this.txt,
     required this.txt1,
     this.ontp
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           // Icon(),
            TextWidget(txt: txt,clr: clr??Colors.grey
              ,fntsze: 14,fntwt: FontWeight.w500,),
          ],
        ),
        InkWell(
          onTap: ontp,
          child: TextWidget(txt:txt1,clr: clr1??Colors.black
            ,fntsze: 14,fntwt: FontWeight.w500,),
        ),
      ],
    );
  }
}
