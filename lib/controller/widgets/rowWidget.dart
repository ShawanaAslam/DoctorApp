
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  String txt;
  String txt1;
   RowWidget({super.key
   ,required this.txt,
     required this.txt1
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(txt: txt,clr: Colors.grey
              ,fntsze: 14,fntwt: FontWeight.w500,),
          ],
        ),
        TextWidget(txt:txt1,clr: Colors.black
          ,fntsze: 14,fntwt: FontWeight.w500,),
      ],
    );
  }
}
