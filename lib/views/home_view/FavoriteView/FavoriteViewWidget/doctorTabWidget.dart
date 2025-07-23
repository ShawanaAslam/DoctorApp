

import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../controller/widgets/text_widget.dart';

class DoctorTabWidget extends StatefulWidget {
  // String text;
  // String txt1;
  // String txt2;
  // String txt3;
  // String txt4;
  DoctorTabWidget({super.key,
    // required this.text,
    // required this.txt1,
    //   required this.txt2,
    //   required this.txt3,
    //   required this.txt4,
  });

  @override
  State<DoctorTabWidget> createState() => _DoctorTabWidgetState();
}

class _DoctorTabWidgetState extends State<DoctorTabWidget> {
  @override
  String selected = 'Cancel';
  Widget build(BuildContext context) {
    return  Container(
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
                txt:'NOV, 19 2023-9:00 AM' ,clr: Colors.black,),
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
                        child:Icon(Icons.star,color: Colors.green,)
                    ),
                  ]),
              // SizedBox(width: 20,),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.green[100],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: [
                              Icon( Icons.star,color: Colors.green,size: 20,),
                              TextWidget(txt:'Professinol Doctor',clr: Colors.black,
                                fntsze: 14,fntwt: FontWeight.w500,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon( Icons.heart_broken,color: Colors.green,size: 20,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextWidget(txt:'Doctor Kenny Adeola',clr: Colors.black,
                      fntsze: 14,fntwt: FontWeight.w500,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      children: [
                        TextWidget(txt: 'General Parttinor',clr: Colors.grey
                          ,fntsze: 14,fntwt: FontWeight.w500,),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10),
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
                        TextWidget(txt: '52 Reviews',clr: Colors.grey
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(txt: 'Make Appointment', ontp: (){})

            ],)
        ],
      ),
    );
  }
}
