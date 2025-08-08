


import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/views/starting_view/welcome_view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class onboarding_widget extends StatelessWidget {
  String text;
  String text1;
  String icon;
  onboarding_widget({super.key,
    required this.text,required this.icon,
    required this.text1});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Column(
          children: [
            SizedBox(height: 400,),
            Text(text,style: TextStyle(color: Colors.black,fontSize: 20
                                    ,fontWeight: FontWeight.w800)),
                                //SizedBox(height: 10,),
                                Text(text1, style: TextStyle(color: Colors.black,fontSize: 15),)
                                ,SizedBox(height: 100,),

            ButtonWidget(
                ontp: (){
Get.to(()=>WelcomeView());
//                  Get.toNamed('/WelcomeView');
                },
                txt: 'Next')

          ],
        ),
      ),
    );
  }
}
