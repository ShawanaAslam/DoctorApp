
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/widgets/selectedButton.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../DashBoardView/dashBoardView.dart';

class CallView extends StatefulWidget {
   CallView({super.key});

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  @override
  int check=0;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              CircleAvatar(
                backgroundColor: AppColors.greenColor,
                radius: 45,
                child: Icon(Icons.call,color: Colors.white,size: 45,),
              ),
              SizedBox(height: 30,),
          TextWidget(txt: 'The Consaltation Session has\n'
              'ended',clr: Colors.black,
            fntsze: 20,fntwt: FontWeight.w600,),
              SizedBox(height: 10,),
              TextWidget(txt: 'Recording has been saved in record',
                clr: Colors.grey,fntsze: 16,),
              SizedBox(height: 45,),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 40,
                child: Icon(Icons.person_outline_outlined,color: Colors.white,size: 60,),
              ),
              SizedBox(height: 20,),
              TextWidget(txt: 'Dr.Kenny Adeola',
                clr: Colors.black,fntsze: 20,),
          
              TextWidget(txt: 'General Practitioner',
                clr: Colors.grey,fntsze: 16,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.location_on,color: Colors.blue,),
                  TextWidget(txt: 'Lagos, Nigeria',
                    clr: Colors.grey,fntsze: 16,),
                ],
              ),
              SizedBox(height: 90,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SelectButton(
                    hgt:55,
                    wdt: 160,ontap: (){
                    check=1;
                    Get.to(()=>DashBoardView());
                    setState(() {
          
                    });
                  }, check: check,
                      //text1:'Back to Home',
                    text: 'Back to Home', check2: 1,),
                  SizedBox(width: 10,),
                  SelectButton(
                    hgt:55,
                    wdt: 160,ontap: (){
                    check=2;
          
                    setState(() {
          
                    });
                  }, check: check,
                     text: 'Add a Review', check2: 2,)
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
