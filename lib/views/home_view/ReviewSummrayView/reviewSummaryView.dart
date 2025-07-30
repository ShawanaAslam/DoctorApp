

import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/controller/widgets/rowWidget.dart';
import 'package:flutter/material.dart';

import '../../../controller/widgets/circleRowWidget.dart';
import '../../../controller/widgets/text_widget.dart';

class ReviewSummaryView extends StatefulWidget {
  const ReviewSummaryView({super.key});

  @override
  State<ReviewSummaryView> createState() => _ReviewSummaryViewState();
}

class _ReviewSummaryViewState extends State<ReviewSummaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Review Summary',
          clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [

          CircleRowWidget(txt:  'Dr.Kenny Adeola', txt1: 'General Practitioner',
              txt2:  'Lageos, Nigiria', txt3: '52 Reviews'),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          RowWidget(txt: 'Date & Hour', txt1: 'November 19,2023 | 8:30 AM'),
        SizedBox(height: 10,),
          RowWidget(txt: 'Pacakge', txt1: 'Vedio Call'),
          SizedBox(height: 10,),
          RowWidget(txt: 'Booking For', txt1: 'Self'),
          SizedBox(height: 10,),
          RowWidget(txt: 'Duration', txt1: '30 minutes'),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          RowWidget(txt: 'Ammount', txt1: '#0.00'),
          SizedBox(height: 10,),
          RowWidget(txt: 'Duration(30 minutes)', txt1: '1*#0.00'),
          SizedBox(height: 10,),
          RowWidget(txt: 'Duration', txt1: '30 minutes'),
          SizedBox(height: 10,),
          RowWidget(txt: 'Total', txt1: '#0.00'),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          
          ProfileFormfieldwidget(txt: 'Card Selected',txt1: 'Change',icn1: Icons.card_travel_rounded,),
          SizedBox(height: 50,),
          ButtonWidget(txt: 'Pay Now', ontp: (){})
        ]
        ),
      ),
    );
  }
}
