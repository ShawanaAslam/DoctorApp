
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signupsec.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return
      Scaffold(
      
        appBar: AppBar(
          title: TextWidget(txt: 'Sign Up',clr: Colors.black,),
          centerTitle: true,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(txt: 'Complete your Profile',clr: Colors.black,),
                 TextWidget(txt: "Don't worry only you can see your personal info\n"
                     "no one else will be able to see it.",clr: Colors.grey,fntsze: 12
                   ,),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Stack(
                    clipBehavior: Clip.none, // Icon ko CircleAvatar ke bahar allow karne ke liye
                    children: [
                      // Profile CircleAvatar
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                        AssetImage('assets/profile.jpg'),
                      ),

                      // Edit Icon
                      Positioned(
                        right: -10,
                        bottom: 10,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],),
                SizedBox(height: 10,),
                MyTextformfield(icon:(Icons.person_outline_outlined),icon1: null,
                    controller: controller, hnttxt: 'Full name'),
                SizedBox(height: 5,),
                MyTextformfield(icon:(Icons.heart_broken_outlined),icon1: null,
                    controller: controller, hnttxt: 'Gender'),
                SizedBox(height: 5,),
                MyTextformfield(icon:(Icons.email_outlined),
                    controller: controller, hnttxt: 'Email',icon1: null,),
                SizedBox(height: 5,),
                MyTextformfield(icon:(Icons.lock_outline),
                    controller: controller, hnttxt: 'Pasword',icon1: null,),
                SizedBox(height: 15,),
                Row(
                  children: [
                    TextWidget(txt: 'By tapping "next" , you agree to our',
                      clr: Colors.black,fntsze: 14,),
                    SizedBox(width: 5,),
                    TextWidget(txt: 'terms',clr: Colors.green,fntsze: 14),
                  ],
                ),
                Row(
                  children: [
                    TextWidget(txt: 'Conditions',clr: Colors.green,fntsze: 14),
                    SizedBox(width: 5,),
                    TextWidget(txt: 'and',clr: Colors.black,fntsze: 14),
                    SizedBox(width: 5,),
                    TextWidget(txt: 'Privacy policy',clr: Colors.green,fntsze: 14),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(txt: 'Next', ontp: (){
                      Get.to(Signupsec());
                    }),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(txt: 'or sign up with',clr: Colors.grey,fntsze: 14),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/google.png'),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/facebook.png'),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/apple-logo.png'),
                    ),SizedBox(width: 10,),

                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                     // Get.to(LoginView());
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      

    );
  }
}

