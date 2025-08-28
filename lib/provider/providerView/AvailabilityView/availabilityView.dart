

import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/selectedButton.dart';
import '../profile/profile.dart';

class AvailabilityView extends StatefulWidget {
  const AvailabilityView({super.key});

  @override
  State<AvailabilityView> createState() => _AvailabilityViewState();
}

class _AvailabilityViewState extends State<AvailabilityView> {
  final List<String> times = [
    '9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM',
    '11:00 AM', '11:30 AM', '12:00 PM', '12:30 PM',
    '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
  ];
  int selectedIndex = -1;
  @override
  //bool isSelected=false;
  int check=0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:TextWidget(txt: 'Availability',clr: Colors.black,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding:  EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(txt: 'Schedule',clr:Colors.black,
                  fntwt: FontWeight.w500,
                  fntsze: 16,
                ),
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SelectButton(
                    text: '13',
                    text1: 'Mon',
                    ontap: (){
                      check=1;

                      setState(() {

                      });
                    },
                    check: check,

                    check2: 1,
                  ),
                  SelectButton(
                    text: '14',
                    text1: 'Tue',
                    ontap: (){
                      check=2;

                      setState(() {

                      });
                    },
                    check: check,

                    check2: 2,
                  ),
                  SelectButton(
                    text: '15',
                    text1: 'Wed',
                    ontap: (){
                      check=3;

                      setState(() {

                      });
                    },
                    check: check,

                    check2: 3,
                  ),
                  SelectButton(
                    text: '16',
                    text1: 'Thur',
                    ontap: (){
                      check=4;

                      setState(() {

                      });
                    },
                    check: check,

                    check2: 4,
                  ),
                  SelectButton(
                    text: '17',
                    text1: 'Fri',
                    ontap: (){
                      check=5;

                      setState(() {

                      });
                    },
                    check: check,

                    check2: 5,
                  ),

                ],
              ),

            ),

            ////////////
            Column(
                children:
                List.generate(3, (row) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (col) {
                      int index = row * 4 + col;
                      bool isSelected = index == selectedIndex;
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.green : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Center(
                                child: Text(
                                  times[index],
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                })),
SizedBox(height: 250,),
ButtonWidget(txt: 'Block Date', ontp: () {
  Get.to(()=>Profile());

},)
          ],
        ),
      ),
    );
  }
}
