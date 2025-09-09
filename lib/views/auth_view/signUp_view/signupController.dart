//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controller/utills/toastNotification/toastNotification.dart';
// import '../../../provider/authView/signUpView/signUpSec.dart';
//
// class SignupController extends GetxController {
//   // Controllers for text fields
//   TextEditingController userNameController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmController = TextEditingController();
//
//   var isLoading = false.obs;
//   var username = ''.obs;
//   var useremail = ''.obs;
//
//   /// SIGNUP FUNCTION
//   void onSignup(BuildContext context) async {
//     if (passwordController.text != confirmController.text) {
//       Get.snackbar("Error", "Passwords must be same");
//     } else {
//       try {
//         isLoading.value = true;
//         username.value = userNameController.text;
//         useremail.value = emailController.text;
//
//         String? result = await createAccount(
//           emailController.text.trim(),
//           passwordController.text.trim(),
//         );
//
//         if (result == 'You are registered successfully') {
//           await addData();
//           confirmToastMessage(context, result!);
//
//           //Navigate to next screen
//           Get.offAll(() => Signupsec());
//         } else {
//           errorToastMessage(context, result!);
//         }
//       } catch (error) {
//         errorToastMessage(context, error.toString());
//       } finally {
//         isLoading.value = false;
//
//         // Clear fields
//         userNameController.clear();
//         genderController.clear();
//         emailController.clear();
//         passwordController.clear();
//         confirmController.clear();
//       }
//     }
//   }
//
//   /// CREATE ACCOUNT WITH FIREBASE AUTH
//   Future<String?> createAccount(String email, String password) async {
//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: email, password: password);
//
//       return 'You are registered successfully';
//     } on FirebaseAuthException catch (exception) {
//       if (exception.code == 'email-already-in-use') {
//         return 'The email is already registered';
//       } else {
//         return 'Something went wrong: ${exception.message}';
//       }
//     } catch (error) {
//       return 'Error occurred: $error';
//     }
//   }
//
//   /// SAVE USER DATA TO FIRESTORE
//   Future<void> addData() async {
//     try {
//       String docId = FirebaseAuth.instance.currentUser!.uid;
//
//       await FirebaseFirestore.instance.collection('UserData').doc(docId).set({
//         'name': username.value,
//         'email': useremail.value,
//         'gender': genderController.text,
//         'docId': docId,
//       });
//     } catch (e) {
//       print('Firestore Error: $e');
//     }
//   }
// }
/////////////////////////////////////////////////////////

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/utills/toastNotification/toastNotification.dart';
import '../../../provider/authView/signUpView/signUpSec.dart';

class SignupController extends GetxController {
  // Controllers for text fields
  TextEditingController userNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  var isLoading = false.obs;
  var username = ''.obs;
  var useremail = ''.obs;

  /// SIGNUP FUNCTION
  void onSignup(BuildContext context) async {
    if (passwordController.text != confirmController.text) {
      Get.snackbar("Error", "Passwords must be same");
    } else {
      try {
        isLoading.value = true;
        username.value = userNameController.text.trim();
        useremail.value = emailController.text.trim();

        String? result = await createAccount(
          emailController.text.trim(),
          passwordController.text.trim(),
        );

        if (result == 'You are registered successfully') {
          await addData();
          confirmToastMessage(context, result!);

          // Navigate
          Get.offAll(() => Signupsec());
        } else {
          errorToastMessage(context, result!);
        }
      } catch (error) {
        errorToastMessage(context, error.toString());
      } finally {
        isLoading.value = false;

        //  Clear fields
        userNameController.clear();
        genderController.clear();
        emailController.clear();
        passwordController.clear();
        confirmController.clear();
      }
    }
  }

  /// CREATE ACCOUNT WITH FIREBASE AUTH
  Future<String?> createAccount(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return 'You are registered successfully';
    } on FirebaseAuthException catch (exception) {
      if (exception.code == 'email-already-in-use') {
        return 'The email is already registered';
      } else {
        return 'Something went wrong: ${exception.message}';
      }
    } catch (error) {
      return 'Error occurred: $error';
    }
  }

  /// SAVE USER DATA TO FIRESTORE
  Future<void> addData() async {
    try {
      String docId = FirebaseAuth.instance.currentUser!.uid;

      // doctorData use collection name for doctor app
      await FirebaseFirestore.instance.collection('userData').doc(docId).set({
        'roll':'user',
        'name': username.value,
        'email': useremail.value,
        'gender': genderController.text.trim(),
        'docId': docId,
        'createdAt': FieldValue.serverTimestamp(), // ✅ for record keeping
      });
    } catch (e) {
      print('Firestore Error: $e');
    }
  }
}

// kyc---->
// Firefirestore.instance.collection('doctorData').doc(currentuserId).collection(kyc).doc(curentdateAndtime).set({
// fields
// })