
import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
import 'package:doctorapp/views/starting_view/splash_view/splash_view.dart';
import 'package:doctorapp/views/starting_view/welcome_view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../provider/authView/loginView/loginView.dart';
import '../../views/auth_view/login_view/loginView.dart';
import '../../views/home_view/BottomNavigationBar/BottomNavigationBar.dart';

class AppRoutes{

  static final routes=[
    GetPage(name: '/splash', page: ()=>SplashView()),
    GetPage(name: '/WelcomeView', page: ()=>WelcomeView()),
    GetPage(name: '/LoginView', page: ()=>LoginView()),
    GetPage(name: '/SignupView', page: ()=>SignupView()),
    GetPage(name: '/BottomBar', page: ()=>BottomNavView()),
   // GetPage(name: '/', page: ()=>SplashView()),
  ];
}
// button ky ander ye line likhain gy
//Get.toNamed('/firstScreen')