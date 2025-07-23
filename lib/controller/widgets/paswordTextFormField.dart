
import 'package:flutter/material.dart';

class PaswordTextFormField extends StatefulWidget {

 TextEditingController Controller;

  PaswordTextFormField({super.key
  ,required this.Controller});

  @override
  State<PaswordTextFormField> createState() => _PaswordTextFormFieldState();
}

class _PaswordTextFormFieldState extends State<PaswordTextFormField> {
  bool _obscurePassword = true;
  //bool _obscureConfirm = true;
   TextEditingController passwordController = TextEditingController();
   TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: TextFormField(
        controller: widget.Controller,
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
    );
  }
}


// import 'package:flutter/material.dart';
//
// class PasswordFormField extends StatefulWidget {
//   final TextEditingController controller;
//
//   const PasswordFormField({super.key, required this.controller});
//
//   @override
//   State<PasswordFormField> createState() => _PasswordFormFieldState();
// }
//
// class _PasswordFormFieldState extends State<PasswordFormField> {
//   bool _obscurePassword = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.only(left: 25, right: 25),
//       child: TextFormField(
//         controller: widget.controller,
//         obscureText: _obscurePassword,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: 'Password',
//           suffixIcon: IconButton(
//             icon: Icon(
//               _obscurePassword ? Icons.visibility_off : Icons.visibility,
//             ),
//             onPressed: () {
//               setState(() {
//                 _obscurePassword = !_obscurePassword;
//               });
//             },
//           ),
//         ),
//         validator: (value) {
//           if (value == null || value.isEmpty) {
//             return 'Please enter password';
//           }
//           if (value.length < 6) {
//             return 'Password must be at least 6 characters';
//           }
//           return null;
//         },
//       ),
//     );
//   }
// }
//
