
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/constants/images.dart';
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signupController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.put(SignupController());

    final _formKey = GlobalKey<FormState>(); // ✅ form key

    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                TextWidget(
                  txt: 'Complete your Profile',
                  clr: Colors.black,
                  fntsze: 20,
                  fntwt: FontWeight.bold,
                ),
                TextWidget(
                  txt: "Don't worry only you can see your personal info\n"
                      "no one else will be able to see it.",
                  clr: Colors.grey,
                  fntsze: 12,
                ),
                const SizedBox(height: 20),

                // Profile picture + edit icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(AppImages.man),
                        ),
                        Positioned(
                          right: -10,
                          bottom: 10,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Text fields with validation
                MyTextformfield(
                  icon: Icons.person_outline_outlined,
                  icon1: null,
                  controller: signupController.userNameController,
                  hnttxt: 'User name',
                ),
                const SizedBox(height: 10),
                MyTextformfield(
                  icon: Icons.heart_broken_outlined,
                  icon1: null,
                  controller: signupController.genderController,
                  hnttxt: 'Gender',
                ),
                const SizedBox(height: 10),
                MyTextformfield(
                  icon: Icons.email_outlined,
                  icon1: null,
                  controller: signupController.emailController,
                  hnttxt: 'Email',
                ),
                const SizedBox(height: 10),
                MyTextformfield(
                  icon: Icons.lock_outline,
                  icon1: null,
                  controller: signupController.passwordController,
                  hnttxt: 'Password',
                ),
                const SizedBox(height: 10),
                MyTextformfield(
                  icon: Icons.lock_outline,
                  icon1: null,
                  controller: signupController.confirmController,
                  hnttxt: 'Confirm Password',
                ),

                const SizedBox(height: 20),

                // Terms & Conditions
                Row(
                  children: [
                    TextWidget(
                      txt: 'By tapping "next" , you agree to our',
                      clr: Colors.black,
                      fntsze: 14,
                    ),
                    const SizedBox(width: 5),
                    TextWidget(
                      txt: 'terms',
                      clr: AppColors.greenColor,
                      fntsze: 14,
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextWidget(
                        txt: 'Conditions',
                        clr: AppColors.greenColor,
                        fntsze: 14),
                    const SizedBox(width: 5),
                    TextWidget(txt: 'and', clr: Colors.black, fntsze: 14),
                    const SizedBox(width: 5),
                    TextWidget(
                        txt: 'Privacy policy',
                        clr: AppColors.greenColor,
                        fntsze: 14),
                  ],
                ),

                const SizedBox(height: 20),

                // NEXT BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => signupController.isLoading.value
                        ? const CircularProgressIndicator()
                        : ButtonWidget(
                      txt: 'Next',
                      ontp: () {
                        if (_formKey.currentState!.validate()) {
                          // ✅ Password matching check
                          if (signupController.passwordController.text !=
                              signupController.confirmController.text) {
                            Get.snackbar(
                              "Error",
                              "Passwords do not match",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.redAccent,
                              colorText: Colors.white,
                            );
                          } else {
                            signupController.onSignup(context);
                          }
                        } else {
                          Get.snackbar(
                            "Error",
                            "Please fill all fields correctly",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.redAccent,
                            colorText: Colors.white,
                          );
                        }
                      },
                    )),
                  ],
                ),

                const SizedBox(height: 20),

                // Social sign in
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
                  children: const [
                    CircleAvatar(backgroundColor: Colors.grey, radius: 18),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Colors.grey, radius: 18),
                    SizedBox(width: 10),
                    CircleAvatar(backgroundColor: Colors.grey, radius: 18),
                  ],
                ),

                const SizedBox(height: 20),

                // Already have account?
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
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
