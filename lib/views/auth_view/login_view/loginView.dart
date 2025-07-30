
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  TextWidget(txt: 'Hello There!',clr: Colors.black,fntsze: 20,),
                  SizedBox(height: 30,),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       // SizedBox(width: 30,),
                        TextWidget(txt: 'Email/Phone number',clr: Colors.black,
                          fntwt: FontWeight.w500,),

                      ]
                  ),
                  SizedBox(height: 5,),
                 ProfileFormfieldwidget(txt: 'Enter Email or Phone Num...',),
                  SizedBox(height: 10),

                  // Confirm Password Field
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //SizedBox(width: 30,),
                        TextWidget(txt: 'pasword',clr: Colors.black,),

                      ]
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: _obscureConfirm,
                    decoration: InputDecoration(
                      //  labelText: 'Confirm Password',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirm ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirm = !_obscureConfirm;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
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
      ),
    );
  }
}















