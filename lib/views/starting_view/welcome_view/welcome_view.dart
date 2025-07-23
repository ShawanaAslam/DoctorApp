import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  bool isLoginSelected = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 300,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(txt: 'Your',clr: Colors.black,),
                SizedBox(width: 10,),
                TextWidget(txt: 'Everyday Doctor',clr: Colors.green,),
              ],
            ),
            TextWidget(txt: 'Appointment Medical app',clr: Colors.black,),
SizedBox(height: 20,),
            TextWidget(txt: 'Talk to doctor, buy mediciens',
              fntwt:FontWeight.w400,clr: Colors.grey,),

            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  isLoginSelected = true;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                decoration: BoxDecoration(
                  color: isLoginSelected ? Colors.green : Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color:  isLoginSelected ? Colors.white :Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Signup InkWell Button
            InkWell(
              onTap: () {
                Get.to(()=>SignupView());
                setState(() {
                  isLoginSelected = false;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                decoration: BoxDecoration(
                  color: isLoginSelected ? Colors.white : Colors.green,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(

                  'Signup',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
