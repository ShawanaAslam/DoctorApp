//
// import 'package:flutter/material.dart';
//
// import '../../../controller/widgets/paswordTextFormField.dart';
// import '../../../controller/widgets/text_widget.dart';
//
// class PaswordManagerView extends StatefulWidget {
//   const PaswordManagerView({super.key});
//
//   @override
//   State<PaswordManagerView> createState() => _PaswordManagerViewState();
// }
//
// class _PaswordManagerViewState extends State<PaswordManagerView> {
//    TextEditingController passwordController = TextEditingController();
//    TextEditingController confirmPasswordController = TextEditingController();
//    bool _obscurePassword = true;
//   // bool _obscureConfirm = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: TextWidget(
//           txt: 'Pasword Manager',
//           clr: Colors.black,
//           fntwt: FontWeight.w500,
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 15,right: 15),
//         child: Column(
//           children: [
//             SizedBox(height: 30,),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   TextWidget(txt: 'Current Pasword',clr: Colors.black,
//                   fntwt: FontWeight.w500,),
//
//                  // PaswordTextFormField(Controller: passwordController,)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25,right: 25),
//                     child: TextFormField(
//                       controller: passwordController,
//                       obscureText: _obscurePassword,
//                       decoration: InputDecoration(
//                         // labelText: 'Password',
//                         border: OutlineInputBorder(),
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscurePassword ? Icons.visibility_off : Icons.visibility,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscurePassword = !_obscurePassword;
//                             });
//                           },
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter password';
//                         }
//                         if (value.length < 6) {
//                           return 'Password must be at least 6 characters';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),
//                 ]
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

class PaswordManagerView extends StatefulWidget {
  const PaswordManagerView({super.key});

  @override
  State<PaswordManagerView> createState() => _PaswordManagerViewState();
}

class _PaswordManagerViewState extends State<PaswordManagerView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: TextWidget(
          txt: 'Pasword Manager',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    TextWidget(txt: 'Current Pasword',clr: Colors.black,
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
              //SizedBox(height: 10),

              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 30,),
                    InkWell(
                      onTap: (){},
                      child: TextWidget(decoration:TextDecoration.underline,
                        txt: 'Current Pasword',clr: Colors.green,
                        fntwt: FontWeight.w500,),
                    ),
SizedBox(width: 30,),
                  ]
              ),

              // Confirm Password Field
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    TextWidget(txt: 'New pasword',clr: Colors.black,
                      fntwt: FontWeight.w500,),

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
              SizedBox(height: 10),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    TextWidget(txt: 'Confirm New pasword',clr: Colors.black,
                      fntwt: FontWeight.w500,),

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
              SizedBox(height: 30,),

              ButtonWidget(txt: 'Change Pasword', ontp: (){

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
















