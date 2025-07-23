
import 'package:doctorapp/views/starting_view/onboaring_view/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 6),()  {
      Get.to(()=>OnboardingView());

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 500,),
            TextWidget(txt: 'MyDoctor App',fntsze: 26,),
            TextWidget(txt: 'we care about your health',fntsze: 12,
              fntwt: FontWeight.w600,)
          ],
        ),
      ),
    );
  }
}
