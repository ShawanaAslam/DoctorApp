

import 'package:flutter/material.dart';

import '../../../../controller/widgets/text_widget.dart';

class ContainerWidget extends StatefulWidget {
  // String text;
  // String txt1;
  // String txt2;
  // String txt3;
  // String txt4;
 ContainerWidget({super.key,
 // required this.text,
 // required this.txt1,
 //   required this.txt2,
 //   required this.txt3,
 //   required this.txt4,
 });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
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
                    padding: const EdgeInsets.only(right: 95),
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.blue,),
                        TextWidget(txt:'Online',clr: Colors.grey
                          ,fntsze: 14,fntwt: FontWeight.w500,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        TextWidget(txt:'Booking ID:',clr: Colors.grey
                          ,fntsze: 14,fntwt: FontWeight.w500,),
                        TextWidget(txt:'#48348e27c',clr: Colors.green
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
                  onTap: () {
                    setState(() {
                      selected = 'Cancel';
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: selected == 'Cancel' ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: selected == 'Cancel' ? Colors.white : Colors.green,
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
                  onTap: () {
                    setState(() {
                      selected = 'Yes';
                    });
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: selected == 'Yes' ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Reshedule',
                      style: TextStyle(
                        color: selected == 'Yes' ? Colors.white : Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

            ],)
        ],
      ),
    );
  }
}
