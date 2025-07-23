

import 'package:doctorapp/controller/widgets/cardWidget.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(

         leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          title: Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Stack(
                children:[ Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children:  [
                      SizedBox(width: 4),
                      TextWidget(txt:
                        '2 new',
                        clr: Colors.green,
                          fntwt: FontWeight.w500,
                         fntsze: 12,
                        ),

                    ],
                  ),

                ),
    Positioned(
    top: 1,
    right: -1,
    child: Container(
    width: 10,
    height: 10,
    decoration: const BoxDecoration(
    color: Colors.red,
    shape: BoxShape.circle,
    ),
    ),
    ),
                ]
              ),
            )
          ],

        ),

      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 // SizedBox(width: 10,)
                  TextWidget(txt: 'Today',clr: Colors.grey,),

                  InkWell(
                    onTap: (){},
                      child: TextWidget(txt: 'Mark all as read',
                        fntwt:FontWeight.w600,clr: Colors.green,))
                ],
              ),

          CardWidget(txt: 'Appointment Success', txt1: '1hr',
              txt2: 'Congratulaions, .....', icon: Icons.date_range,
            clr: Colors.green,),

              CardWidget(txt: 'Schedule Changed', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.date_range,
                clr: Colors.blue,),

              CardWidget(txt: 'Vedio Call Appointment', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.missed_video_call_outlined,
                clr: Colors.green,),

              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Yesterday',clr: Colors.grey,),
                ],
              ),
              CardWidget(txt: 'Vedio Call Appointment', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.missed_video_call_outlined,
                clr: Colors.green,),

              CardWidget(txt: 'Vedio Call Appointment', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.missed_video_call_outlined,
                clr: Colors.green,),

              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: '2023-11-22',clr: Colors.grey,),
                ],
              ),
              CardWidget(txt: 'Vedio Call Appointment', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.missed_video_call_outlined,
                clr: Colors.green,),
              
              CardWidget(txt: 'Vedio Call Appointment', txt1: '1hr',
                txt2: 'Congratulaions, .....', icon: Icons.missed_video_call_outlined,
                clr: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
