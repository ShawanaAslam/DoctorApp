
import 'package:doctorapp/views/starting_view/splash_view/splash_view.dart';
import 'package:get/get.dart';

class AppRoutes{

  static final routes=[
    GetPage(name: '/splash', page: ()=>SplashView()),
    GetPage(name: '/firstScreen', page: ()=>SplashView()),
    GetPage(name: '', page: ()=>SplashView()),
  ];
}
// button ky ander ye line likhain gy
//Get.toNamed('/firstScreen')