
import 'package:doctorapp/controller/widgets/genderButton.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/home_view/PaymentView/paymentView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/selectedButton.dart';
import '../../../controller/widgets/selectedButton2.dart';

class NewAppointmentview extends StatefulWidget {
  const NewAppointmentview({super.key});

  @override
  State<NewAppointmentview> createState() => _NewAppointmentviewState();
}

class _NewAppointmentviewState extends State<NewAppointmentview> {
  String selectedGender = '';

  final List<String> times = [
    '9:00 AM', '9:30 AM', '10:00 AM', '10:30 AM',
    '11:00 AM', '11:30 AM', '12:00 PM', '12:30 PM',
    '1:00 PM', '1:30 PM', '2:00 PM', '2:30 PM',
  ];
  int selectedIndex = -1;
  TextEditingController controller=TextEditingController();
  @override
  bool isSelected=false;
  int check=0;
  Widget build(BuildContext context ) {

    return Scaffold(
      appBar: AppBar(

        title:  TextWidget(txt: "NewAppointment", clr:  Colors.black),
        centerTitle: true,
       leading: IconButton(onPressed: (){
         Get.back();
       }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10,left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: "Nov, 2023", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w400,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_outlined))
                ],
              ),
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
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: "Available Time", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),
          
                ],
              ),
              SizedBox(height: 5,),
              Column(children:
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
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: "Patient Details", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),
          
                ],
              ),
              SizedBox(height: 5,),
                Row(
            children: [
              SizedBox(width:10 ,),
              TextWidget(txt: "Full Name", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),
          
            ],
                ),
              SizedBox(height: 2,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: MyTextformfield(controller: controller, hnttxt: 'Join Date', icon: null,icon1: null, ),
          ),
              SizedBox(height: 2,),
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: 'Age', clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),
          
                ],
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: MyTextformfield(controller: controller,
                  hnttxt: 'Join Date', icon: null,
                  icon1: (Icons.keyboard_arrow_down_outlined),),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: "Gender", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),

                ],
              ),
          GenderButton(txt: '',txt1: '',),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Get.to(()=>PaymentView());
                    },
                    child: Container(height: 40,
                        width: 150,
                        child: Center(child: TextWidget(txt: 'Payment'))
                        ,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                        ),),
                  ),
                ],
              ),

              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width:10 ,),
                  TextWidget(txt: "Write your problem", clr:  Colors.black,fntsze: 14,fntwt: FontWeight.w500,),

                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(12),
                height:100,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                  ),
                  borderRadius: BorderRadius.circular(10), // Optional: rounded corners
                ),
                child: Text(
                  'Describe your problem',
                ),
              ),
               SizedBox(height: 10,)
            ]
          ),
        ),
      ),

    );
  }
}
