import 'package:flutter/material.dart';
class MyTextformfield extends StatelessWidget {
  TextEditingController controller;
  String hnttxt;
  Color clr;
   IconData? icon;
  IconData? icon1;

  MyTextformfield({super.key,required this.controller,required this.hnttxt,
    this.clr=Colors.white,required this.icon,required this.icon1});

  @override
  Widget build(BuildContext context) {
    return
      // Padding(
      //   padding:  EdgeInsets.only(left: 10,right: 10),
      //child:
      TextFormField(
        controller: controller,
        validator: (value){
          if(value == null || value.isEmpty)
          {
            return 'Please enter your $hnttxt';
          }
          if(hnttxt =='User name' && !RegExp(r'^[a-zA-z]').hasMatch(value))
          {
            return 'Username must start with a letter';
          }
          if(hnttxt =='Email' && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4$}').hasMatch(value))
          {
            return 'Please enter a valid email address';
          }
          if(hnttxt == 'Pasword' && value.length < 8)
          {
            return 'Pasword must be at least 8 characters long';
          }
          if(hnttxt == 'Pasword' && !RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(value))
          {
            return 'Pasword must contain letters,numbers, and special characters';
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: icon!=null ? Icon(icon) : null,
suffixIcon: icon1!=null ? Icon(icon1) : null,
          // fillColor: clr,
          //filled: true,
          hintText:hnttxt,
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),

        ),
        //  ),
      );
  }
}
