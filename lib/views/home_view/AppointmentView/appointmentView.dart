

import 'package:doctorapp/controller/widgets/circleRowWidget.dart';
import 'package:doctorapp/controller/widgets/rowWidget.dart';
import 'package:flutter/material.dart';

import '../../../controller/widgets/text_widget.dart';

class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'My Appointment',clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            SizedBox(height: 10,),
           CircleRowWidget(txt:  'Dr.Kenny Adeola', txt1: 'General Practitioner',
               txt2:  'Lageos, Nigiria', txt3: '52 Reviews'),
            SizedBox(height: 10,),
Divider(),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(txt: 'Schedule Appointment',clr: Colors.black
                  ,fntsze: 14,fntwt: FontWeight.w500,),
              ],
            ),
            SizedBox(height: 10,),
            RowWidget(txt: 'Date', txt1:  'November 24,2023'),
            SizedBox(height: 10,),
            RowWidget(txt: 'Time', txt1:  '9:00-9:30 (30 minutes)'),
            SizedBox(height: 10,),
            RowWidget(txt: 'Booking for', txt1:  'Self'),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 20,),
            RowWidget(txt: 'Full Name', txt1:  'Ngozi Unwoka'),
            SizedBox(height: 10,),
            RowWidget(txt: 'Gender', txt1:  'Female'),
            SizedBox(height: 10,),
            RowWidget(txt: 'Age', txt1:  '27'),
            SizedBox(height: 10,),
            RowWidget(txt: 'Problem', txt1:  'hello, Doctor I need help I\n'
                'belevie .....................'),

          ],
        ),
      ),
    );
  }
}
