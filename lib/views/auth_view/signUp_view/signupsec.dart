
import 'package:doctorapp/views/auth_view/verificationview/verificationView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/mytextformfield.dart';
import '../../../controller/widgets/text_widget.dart';

class Signupsec extends StatefulWidget {
  const Signupsec({super.key});

  @override
  State<Signupsec> createState() => _SignupsecState();
}

class _SignupsecState extends State<Signupsec> {

  @override
  TextEditingController controller=TextEditingController();
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Sign Up',clr: Colors.black,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            TextWidget(txt: 'Enter your phone number',clr: Colors.black,fntwt: FontWeight.w500,),
            SizedBox(height: 5,),
            MyTextformfield(icon:(Icons.call),
                controller: controller, hnttxt: 'phone number',icon1: null,),

            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(txt: 'Sign Up', ontp: (){

                  Get.to(Verificationview());
                }),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(txt: 'or sign up with',clr: Colors.grey,fntsze: 14),
              ],
            ),
            SizedBox(height: 10,),
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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    //   Get.to(LoginView());
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
    );
  }
}
