

import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TextWidget(txt: 'Payment',
          clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height:20 ,),
            Center(

              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.green,
                child: Icon(Icons.check,color: Colors.white,size: 50,weight: 30,),
              ),
            ),
            SizedBox(height:20 ,),
            TextWidget(txt: 'Payment Successful',
              clr: Colors.black,fntwt: FontWeight.w500,),
            SizedBox(height:5 ,),
            TextWidget(txt: 'You have Successfully Booked an appointment\n'
                '                                      with',
              clr: Colors.grey,fntwt: FontWeight.w500,fntsze: 12,),
            SizedBox(height:5 ,),
            TextWidget(txt: 'Dr.Kenny Adeola',
              clr: Colors.black,fntwt: FontWeight.w500,),
            SizedBox(height:20 ,),
            DottedLine(
              dashColor: Colors.grey,
              dashLength: 6,
              dashGapLength: 4,
              lineThickness: 1,
            ),
SizedBox(height: 20,),
Row(children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(width: 20,),
      Icon(Icons.person,color: Colors.green,),
      SizedBox(width: 10,),
      TextWidget(txt: 'Madilyn Doe',clr: Colors.black,fntwt: FontWeight.w500)
    ],
  ),
  SizedBox(width: 20,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(width: 20,),
      Icon(Icons.hail_sharp,color: Colors.green,),
      SizedBox(width: 10,),
      TextWidget(txt: '#20',clr: Colors.black,fntwt: FontWeight.w500)
    ],
  )

],),
            SizedBox(height: 10,),
            Row(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.person,color: Colors.green,),
                  SizedBox(width: 10,),
                  TextWidget(txt: '19 Nov,2023',clr: Colors.black,fntwt: FontWeight.w500)
                ],
              ),
              SizedBox(width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.access_time_filled,color: Colors.green,),
                  SizedBox(width: 10,),
                  TextWidget(txt: '8:30 AM',clr: Colors.black,fntwt: FontWeight.w500,)
                ],
              )

            ],),
SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (context) {
                int selectedIndex = -1;

                return StatefulBuilder(
                  builder: (context, setState) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildSelectableButton(
                            index: 0,
                            selectedIndex: selectedIndex,
                            text: 'View Appointment',
                            onTap: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                          ),
                          SizedBox(height: 15),
                          buildSelectableButton(
                            index: 1,
                            selectedIndex: selectedIndex,
                            text: 'Go to home',
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
          child: Text("Bottom Sheet"),
        ),
        ]

      ),
    )
    );
  }

  Widget buildSelectableButton({
    required int index,
    required int selectedIndex,
    required String text,
    required VoidCallback onTap,
  }) {
    bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.green),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}



