
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/paswordFormField.dart';
import '../../../controller/widgets/text_widget.dart';
import 'LoginWidget/fingerPrintWidget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                TextWidget(txt: 'Hello There!',clr: Colors.black,fntsze: 20,),
                SizedBox(height: 30,),

                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30,),
                      TextWidget(txt: 'Email/Phone number',clr: Colors.black,
                        fntwt: FontWeight.w500,),

                    ]
                ),
                SizedBox(height: 5,),
               Padding(
                 padding:  EdgeInsets.only(left: 25,right: 25),
                 child: ProfileFormfieldwidget(txt: 'Enter Email or Phone Num...',),
               ),
                SizedBox(height: 10),

                // Confirm Password Field
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 30,),
                      TextWidget(txt: 'pasword',clr: Colors.black,),

                    ]
                ),
                SizedBox(height: 5),
                PaswordFormField(),
                SizedBox(height: 30),

                ButtonWidget(txt: 'Sign in', ontp: (){

                  Get.to(DashBoardView());
                  if (_formKey.currentState!.validate()) {
                    // Validation passed
                    print("Password: ${passwordController.text}");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Password Validated!')),);}}


                ),
                SizedBox(height: 30,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //SizedBox(width: 30,),
                      TextWidget(txt: 'Change pasword',clr: Colors.black,),


                    ]
                ),
                SizedBox(height: 30,),
               FingerprintWidget(
                 onTap: (){},
               )
              ]),
        ),
      ),
    );
  }
}















