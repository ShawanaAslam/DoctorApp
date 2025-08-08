
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/constants/images.dart';
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signupsec.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return
      Scaffold(
backgroundColor: AppColors.whiteClr,
        // appBar: AppBar(
        //
        //   leading: IconButton(onPressed: (){
        //     Get.back();
        //   }, icon: Icon(Icons.arrow_back)),
        // ),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,),
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
                        AssetImage(AppImages.man),
                      ),

                      // Edit Icon
                      Positioned(
                        right: -10,
                        bottom: 10,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
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
                    TextWidget(txt: 'terms',clr: AppColors.greenColor,fntsze: 14),
                  ],
                ),
                Row(
                  children: [
                    TextWidget(txt: 'Conditions',clr:AppColors.greenColor,fntsze: 14),
                    SizedBox(width: 5,),
                    TextWidget(txt: 'and',clr: Colors.black,fntsze: 14),
                    SizedBox(width: 5,),
                    TextWidget(txt: 'Privacy policy',clr: AppColors.greenColor,fntsze: 14),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonWidget(txt: 'Next', ontp: (){
                     // Get.to(Signupsec());
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
                      backgroundImage: AssetImage(''),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: AssetImage(''),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: AssetImage(''),
                    ),SizedBox(width: 10,),

                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    InkWell(
                      onTap: () {
                     // Get.to(LoginView());
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color: AppColors.greenColor,
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

