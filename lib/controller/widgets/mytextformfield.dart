// import 'package:flutter/material.dart';
// class MyTextformfield extends StatelessWidget {
//   TextEditingController controller;
//   String hnttxt;
//   Color clr;
//    IconData? icon;
//   IconData? icon1;
//
//   MyTextformfield({super.key,required this.controller,required this.hnttxt,
//     this.clr=Colors.white,required this.icon,required this.icon1});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       // Padding(
//       //   padding:  EdgeInsets.only(left: 10,right: 10),
//       //child:
//       TextFormField(
//         controller: controller,
//         validator: (value){
//           if(value == null || value.isEmpty)
//           {
//             return 'Please enter your $hnttxt';
//           }
//           if(hnttxt =='User name' && !RegExp(r'^[a-zA-z]').hasMatch(value))
//           {
//             return 'Username must start with a letter';
//           }
//           if(hnttxt =='Email' && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4$}').hasMatch(value))
//           {
//             return 'Please enter a valid email address';
//           }
//           if(hnttxt == 'Pasword' && value.length < 8)
//           {
//             return 'Pasword must be at least 8 characters long';
//           }
//           if(hnttxt == 'Pasword' && !RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$').hasMatch(value))
//           {
//             return 'Pasword must contain letters,numbers, and special characters';
//           }
//           return null;
//         },
//         decoration: InputDecoration(
//           prefixIcon: icon!=null ? Icon(icon) : null,
// suffixIcon: icon1!=null ? Icon(icon1) : null,
//           // fillColor: clr,
//           //filled: true,
//           hintText:hnttxt,
//           hintStyle: TextStyle(fontSize: 16),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//
//         ),
//         //  ),
//       );
//   }
// }
/////////////////////////////////

import 'package:flutter/material.dart';

class MyTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final String hnttxt;
  final Color clr;
  final IconData? icon;
  final IconData? icon1;
  final FormFieldValidator<String>? validator;

  const MyTextformfield({
    super.key,
    required this.controller,
    required this.hnttxt,
    this.clr = Colors.white,
    this.icon,
    this.icon1,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator ?? (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $hnttxt';
        }

        // ✅ Username Validation
        // if (hnttxt.toLowerCase().contains("user")) {
        //   if (!RegExp(r'^[A-Za-z][A-Za-z0-9_]{3,15}$').hasMatch(value)) {
        //     return 'Username must start with a letter\n(min 4 chars, only letters, numbers, _ allowed)';
        //   }
        // }

        // ✅ Email Validation
        if (hnttxt.toLowerCase().contains("email")) {
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return 'Please enter a valid email address';
          }
        }

        // ✅ Phone Validation
        if (hnttxt.toLowerCase().contains("phone")) {
          if (!RegExp(r'^[0-9]{10,13}$').hasMatch(value)) {
            return 'Please enter a valid phone number';
          }
        }

        // // ✅ Password Validation
        // if (hnttxt.toLowerCase().contains("password")) {
        //   if (value.length < 8) {
        //     return 'Password must be at least 8 characters long';
        //   }
        //   if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$')
        //       .hasMatch(value)) {
        //     return 'Password must contain letters, numbers & special characters';
        //   }
        // }

        // // ✅ Confirm Password Validation
        // if (hnttxt.toLowerCase().contains("confirm")) {
        //   // ye confirm password wali validation tab kaam karegi
        //   // jab compare karne ke liye ek "passwordController" bhi pass karenge
        //   // abhi ke liye just check kar dete hain empty na ho
        //   if (value.length < 8) {
        //     return 'Confirm password must be valid';
        //   }
        // }

        return null;
      },
      decoration: InputDecoration(
        prefixIcon: icon != null ? Icon(icon) : null,
        suffixIcon: icon1 != null ? Icon(icon1) : null,
        hintText: hnttxt,
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
