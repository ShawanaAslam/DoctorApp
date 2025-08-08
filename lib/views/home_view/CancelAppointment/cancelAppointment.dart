import 'package:doctorapp/controller/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/text_widget.dart';

class CancelAppointmentView extends StatefulWidget {
  @override
  State<CancelAppointmentView> createState() => _CancelAppointmentViewState();
}

class _CancelAppointmentViewState extends State<CancelAppointmentView> {
  String selectedOption = "Cancel"; // default selected
   TextEditingController reasonController = TextEditingController();
  int selecteOption = 0;

  List<String> options = [
    "Reshedulling",
    "Feeling Better",
    "Weather conditions",
    "Financial Constraints",
    "Unexpected Word",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Cancel Appointment',clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (
            ){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(txt:
                'Please let us now the reason of your\n'
                    'cancelation so that we can better server\n'
                    'you, we care about your health',clr: Colors.black,
          fntwt: FontWeight.w400,fntsze: 16,
              ),
              SizedBox(height: 10),
          Column(
            children: List.generate(options.length, (index) {
              return Row(
                children: [
                  Radio(
                    value: index,
                    groupValue: selecteOption,
                    activeColor: AppColors.greenColor,
                    onChanged: (value) {
                      setState(() {
                        selecteOption = value!;
                      });
                    },
                  ),
                  Text(
                    options[index],
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              );
            }),
          ),

            //  SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(txt: 'Others',
                    clr: Colors.black,fntwt: FontWeight.w500,)
                ],
              ),


              TextFormField(
                controller: reasonController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Enter your reason here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

                SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(txt: 'Cancel Appointment', ontp: (){

                   }


                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }


  }

