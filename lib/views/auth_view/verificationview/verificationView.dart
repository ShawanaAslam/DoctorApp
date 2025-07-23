

import 'package:doctorapp/views/auth_view/setpasword/setPasword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../controller/widgets/text_widget.dart';

class Verificationview extends StatefulWidget {
 Verificationview({super.key});

  @override
  State<Verificationview> createState() => _VerificationviewState();
}

class _VerificationviewState extends State<Verificationview> {
TextEditingController otpController=TextEditingController();
String otpCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TextWidget(txt: 'Verification',clr: Colors.black,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            TextWidget(txt: 'phone Verification',clr: Colors.black,),
            SizedBox(height: 20,),
            TextWidget(txt: "We'll send a code to your number to\n"
              "confirm you own it",clr: Colors.grey
              ,fntwt: FontWeight.w400,),
            SizedBox(height: 30,),


            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: otpController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  otpCode = value;
                });
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box, // ✅ circle -> box
                borderRadius: BorderRadius.circular(6), // Slight rounding for square
                fieldHeight: 45,
                fieldWidth: 45,
                activeFillColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                inactiveColor: Colors.grey.shade400,
                selectedColor: Colors.green,
                activeColor: Colors.green,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ✅ reduce gap
              enableActiveFill: false,
            ),

            SizedBox(height: 20,),
            TextWidget(txt: "I haven't receive a code (0.09)",
              clr: Colors.grey,fntwt: FontWeight.w600,),
            GestureDetector(
              onTap: () {
                  Get.to(SetPasword());
              },
              child: const Text(
                "resend code",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
