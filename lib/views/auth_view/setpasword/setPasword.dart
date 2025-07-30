
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

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
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: TextFormField(
            controller: passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
             // labelText: 'Password',

              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
        ),
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
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: TextFormField(
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
        ),
        SizedBox(height: 30),

        ButtonWidget(txt: 'Create New Pasword', ontp: (){

          Get.to(DashBoardView());
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















