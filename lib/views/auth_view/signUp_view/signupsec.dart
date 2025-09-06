

import 'package:doctorapp/controller/constants/images.dart';
import 'package:doctorapp/views/auth_view/verificationview/verificationView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/mytextformfield.dart';
import '../../../controller/widgets/text_widget.dart';
import '../../../provider/authView/loginView/loginView.dart';
import '../login_view/loginView.dart';
import 'signupSecController.dart';

class Signupsec extends StatelessWidget {
  Signupsec({super.key});

  final SignupSecController signupSecController =
  Get.put(SignupSecController());

  final _formKey = GlobalKey<FormState>(); // ✅ form key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Form(
          key: _formKey, // ✅ wrap with form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 55),
              TextWidget(
                txt: 'Enter your phone number',
                clr: Colors.black,
                fntwt: FontWeight.w500,
              ),
              const SizedBox(height: 5),

              // Phone field with validation
              MyTextformfield(
                icon: Icons.call,
                controller: signupSecController.phoneController,
                hnttxt: 'Phone number',
                icon1: null,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number is required';
                  } else if (value.length < 10) {
                    return 'Enter valid phone number';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 25),

              // SignUp button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => signupSecController.isLoading.value
                      ? const CircularProgressIndicator()
                      : ButtonWidget(
                    txt: 'Sign Up',
                    ontp: () {
                      if (_formKey.currentState!.validate()) {
                        signupSecController.onPhoneSignup(context);
                      } else {
                        Get.snackbar(
                          "Error",
                          "Please enter valid phone number",
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.redAccent,
                          colorText: Colors.white,
                        );
                      }
                    },
                  )),
                ],
              ),

              const SizedBox(height: 10),

              // Social login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      txt: 'or sign up with', clr: Colors.grey, fntsze: 14),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.whiteClr,
                    backgroundImage: AssetImage(AppImages.google),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage(AppImages.facebook),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: AppColors.whiteClr,
                    backgroundImage: AssetImage(AppImages.google),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  InkWell(
                    onTap: () {
                      Get.to(() => LoginView());
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
