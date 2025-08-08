
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CircleRowWidget extends StatelessWidget {
  String txt;
  String txt1;
  String txt2;
  String txt3;
  CircleRowWidget({super.key,
  required this.txt,
    required this.txt1,
    required this.txt2,
    required this.txt3
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Row(
        children: [
          SizedBox(width:0 ,),
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
                padding: const EdgeInsets.only(right: 45),
                child: TextWidget(txt:txt,clr: Colors.black,
                  fntsze: 14,fntwt: FontWeight.w500,),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    TextWidget(txt: txt1,clr: Colors.grey
                      ,fntsze: 14,fntwt: FontWeight.w500,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.blue,),
                    TextWidget(txt:txt2,clr: Colors.grey
                      ,fntsze: 14,fntwt: FontWeight.w500,),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [

                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    //SizedBox(width: 5,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    // SizedBox(width: 5,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    // SizedBox(width: 5,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    // SizedBox(width: 5,),
                    Icon(Icons.star,color: Colors.orange,size: 18,),
                    SizedBox(width: 10,),
                    TextWidget(txt: txt3,clr: Colors.grey
                      ,fntsze: 14,fntwt: FontWeight.w500,),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
