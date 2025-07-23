
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  String txt;
  VoidCallback ontp;
  IconData icn;
   ProfileRow({super.key,
     required this.ontp,
   required this.txt,required this.icn
   });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icn,color: Colors.green,),
            SizedBox(width: 10,),
            InkWell(
                onTap:ontp ,
                child: TextWidget(txt: txt,clr: Colors.black,fntwt: FontWeight.w500,))

          ],
        ),
        Icon(Icons.keyboard_arrow_right_outlined,color: Colors.green,)
      ],
    );
  }
}
