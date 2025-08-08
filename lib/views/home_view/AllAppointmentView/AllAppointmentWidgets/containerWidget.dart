

import 'package:doctorapp/views/home_view/CancelAppointment/cancelAppointment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/constants/colors.dart';
import '../../../../controller/widgets/text_widget.dart';

class ContainerWidget extends StatefulWidget {
  String text;
  String txt1;
  String txt2;
  String txt3;
  String txt4;
  String txt5;
  String txt6;
   VoidCallback? conontp;
  VoidCallback? cnclontp;
  String txt7;
  VoidCallback? ontp1;

 ContainerWidget({super.key,
  required this.text,

 required this.txt1,
   required this.txt2,
   required this.txt3,
   required this.txt4,
   required this.txt5,
   required this.txt6,
   this.conontp,
   this.cnclontp,
   required this.txt7,
   this.ontp1
 });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  String selected = 'Cancel';

  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.conontp,
      child: Container(
        height: 220,
        // margin: EdgeInsets.all(16) ,
        padding:EdgeInsets.only(left: 10,right: 10,top: 10) ,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[100],
            border: Border.all(
              color: Colors.grey
            )
        ),
        child: Column(
          children: [
            Row(
              children: [
                // SizedBox(width: 20,),
                TextWidget(fntwt:FontWeight.w500,fntsze: 14,
                  txt:widget.text ,clr: Colors.black,),
              ],
            ),
            Divider(
              indent:
              10,endIndent: 10,
            ),

            Row(
              children: [
                // SizedBox(width:0 ,),
                Stack(
                    children:[ CircleAvatar(
                      radius: 40,
                      child: Icon(Icons.person_outline_outlined),
                    ),
                      Positioned(
                          bottom: 2,
                          right: 1,
                          child:Icon(Icons.star,color: AppColors.greenColor,)
                      ),
                    ]),
                // SizedBox(width: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextWidget(txt:widget.txt1,clr: Colors.black,
                        fntsze: 14,fntwt: FontWeight.w500,),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(right: 40),
                      child: Row(
                        children: [
                          TextWidget(txt: widget.txt2,clr: Colors.grey
                            ,fntsze: 14,fntwt: FontWeight.w500,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 95),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.blue,),
                          TextWidget(txt:widget.txt3,clr: Colors.grey
                            ,fntsze: 14,fntwt: FontWeight.w500,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          TextWidget(txt:widget.txt4,clr: Colors.grey
                            ,fntsze: 14,fntwt: FontWeight.w500,),
                          TextWidget(txt:widget.txt5,clr:AppColors.greenColor
                            ,fntsze: 14,fntwt: FontWeight.w500,),

                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                // Cancel Button
                Expanded(

                  child:
                  InkWell(
                   onTap: widget.cnclontp,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: selected == 'Cancel' ? AppColors.greenColor : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.greenColor),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        widget.txt6,
                        style: TextStyle(
                          color: selected == 'Cancel' ? Colors.white :AppColors.greenColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),

                // Yes, Log out Button
                Expanded(
                  child: InkWell(
                   onTap: widget.ontp1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: selected == 'Yes' ? AppColors.greenColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.greenColor),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        widget.txt7,
                        style: TextStyle(
                          color: selected == 'Yes' ? Colors.white : AppColors.greenColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

              ],)
          ],
        ),
      ),
    );
  }
}
