//////
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/paswordFormField.dart';
import 'package:doctorapp/views/auth_view/login_view/loginView.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/widgets/text_widget.dart';
import '../../../provider/authView/loginView/loginView.dart';

class SetPasword extends StatefulWidget {
  const SetPasword({super.key});

  @override
  State<SetPasword> createState() => _SetPaswordState();
}

class _SetPaswordState extends State<SetPasword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
        appBar: AppBar(


    leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
    ),
    body: SingleChildScrollView(
      child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      TextWidget(txt: 'Set pasword',clr: Colors.black,fntsze: 25,),
      SizedBox(height: 20,),
      TextWidget(txt: "your new pasword must be different from\n"
      "previously used pasword",clr: Colors.grey
      ,fntwt: FontWeight.w400,),
      SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(width: 30,),
            TextWidget(txt: 'Pasword',clr: Colors.black,
              fntwt: FontWeight.w500,),

           ]
        ),
        SizedBox(height: 5,),
        PaswordFormField(),
        SizedBox(height: 10),

        // Confirm Password Field
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,),
              TextWidget(txt: 'Confirm pasword',clr: Colors.black,),

            ]
        ),
        SizedBox(height: 5),
        PaswordFormField(),

        SizedBox(height: 30),

        ButtonWidget(txt: 'Create New Pasword', ontp: (){

          Get.to(LoginView());
      if (_formKey.currentState!.validate()) {
      // Validation passed
      print("Password: ${passwordController.text}");
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Password Validated!')),);}}


        )
         ]),
    ),
    );
  }
}















