import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:doctorapp/views/auth_view/verificationview/verificationView.dart';

class SignupSecController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  var isLoading = false.obs;

  /// Function for phone signup
  void onPhoneSignup(BuildContext context) async {
    if (phoneController.text.isEmpty) {
      Get.snackbar("Error", "Please enter phone number");
    } else {
      try {
        isLoading.value = true;

        // TODO: Yahan Firebase Phone Authentication ka code ayega
        // Abhi direct verification screen pe le ja rahe hain
        Get.to(() => Verificationview(), arguments: {
          "phone": phoneController.text.trim(),
        });
      } catch (e) {
        Get.snackbar("Error", e.toString());
      } finally {
        isLoading.value = false;
        phoneController.clear();
      }
    }
  }
}
