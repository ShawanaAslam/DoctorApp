

import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/auth_view/login_view/loginView.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signUpScroll.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/constants/colors.dart';
import '../../../provider/authView/loginView/loginView.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  bool isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(txt: 'Your', clr: Colors.black),
                SizedBox(width: 10),
                TextWidget(txt: 'Everyday Doctor', clr: AppColors.greenColor),
              ],
            ),
            TextWidget(txt: 'Appointment Medical app', clr: Colors.black),
           SizedBox(height: 20),
            TextWidget(
              txt: 'Talk to doctor, buy medicines',
              fntwt: FontWeight.w400,
              clr: Colors.grey,
            ),
           SizedBox(height: 20),

            InkWell(
              onTap: () {
                setState(() {
                  isLoginSelected = true;
                });
              //  Get.toNamed('/LoginView');
                Get.to(()=>LoginView());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                decoration: BoxDecoration(
                  color: isLoginSelected ? AppColors.greenColor : Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: isLoginSelected ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          SizedBox(height: 10),

            InkWell(
              onTap: () {
                setState(() {
                  isLoginSelected = false;
                });
                Get.to(() => SignUpScroll());
              },
              child: Container(
                padding:  EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                decoration: BoxDecoration(
                  color: isLoginSelected ? Colors.white : AppColors.greenColor,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Signup',
                  style: TextStyle(
                    color: isLoginSelected ? Colors.black : Colors.white,
                    fontSize: 18,
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
