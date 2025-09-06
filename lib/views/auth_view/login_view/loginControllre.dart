import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/utills/toastNotification/toastNotification.dart';
import '../../../views/home_view/BottomNavigationBar/BottomNavigationBar.dart';

class LoginController extends GetxController {
  // Controllers for input fields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;

  /// LOGIN FUNCTION
  Future<void> onLogin(BuildContext context) async {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      errorToastMessage(context, "Please fill all fields");
      return;
    }

    try {
      isLoading.value = true;

      // Firebase login
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (userCredential.user != null) {
        confirmToastMessage(context, "Login Successful 🎉");

        // ✅ Navigate to BottomNavView
       // Get.offAll(() => BottomNavView());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        errorToastMessage(context, "No user found with this email");
      } else if (e.code == "wrong-password") {
        errorToastMessage(context, "Incorrect password");
      } else {
        errorToastMessage(context, "Error: ${e.message}");
      }
    } catch (e) {
      errorToastMessage(context, "Error: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
