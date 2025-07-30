


//import '../../linker/linker.dart';


import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashSelectedWidget extends StatelessWidget {
  int check;
  VoidCallback ontap;
  String? text;
IconData icon;
  int check2;
  double hgt;
  double wdt;
  // Color clr;

  DashSelectedWidget({super.key,
    required this.ontap, required this.check,
    this.text,
required this .icon,
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

           color:   check==check2 ?
           AppColors.greenColor
               : Colors.white,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
            children: [

              SizedBox(height: 5,),
            Icon (icon,color: check==check2 ?Colors.white:AppColors.greenColor),
              SizedBox(width: 30,),
              TextWidget(txt:text??'',fntsze: 14,fntwt: FontWeight.w400,clr:  check==check2 ?Colors.white:Colors.grey ),


            ]
        ),
      ),
    );
  }
}


