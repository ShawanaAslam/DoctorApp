


//import '../../linker/linker.dart';


import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  int check;
  VoidCallback ontap;
  String? text;
  String? text1;
  int check2;
  double hgt;
  double wdt;
 // Color clr;

  SelectButton({super.key,
    required this.ontap, required this.check,
    this.text,
    this.text1,
   // this.clr=Colors.black,
    this.hgt=60,
    this.wdt=55,
    required this.check2 });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        //padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10,left: 10),
        width: wdt,
        height: hgt,
        decoration: BoxDecoration(
          border: Border.all(
           // width: 1.0
          //  color:  check==check2 ? clr: Colors.white,
          ),
            color:   check==check2 ? Colors.green: Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          children: [

                SizedBox(height: 5,),
                TextWidget(txt: text??'',fntsze: 16,fntwt: FontWeight.w600,clr: check==check2 ?Colors.white:Colors.grey),
                SizedBox(width: 30,),
                TextWidget(txt:text1??'',fntsze: 14,fntwt: FontWeight.w400,clr:  check==check2 ?Colors.white:Colors.grey ),


]
        ),
      ),
    );
  }
}


