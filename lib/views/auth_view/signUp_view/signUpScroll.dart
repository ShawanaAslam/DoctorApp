//
//
//
//
// import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
// import 'package:doctorapp/views/auth_view/signUp_view/signupsec.dart';
// import 'package:flutter/material.dart';
//
//
//
//
// class SignUpScroll extends StatefulWidget {
//   const SignUpScroll({super.key});
//
//   @override
//   State<SignUpScroll> createState() => _SignUpScrollState();
// }
//
// class _SignUpScrollState extends State<SignUpScroll> {
//
//   final PageController pageController=PageController();
//   int Currentpage=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OrientationBuilder(
//         builder: (context,orentation){
//           return GestureDetector(
//             onHorizontalDragEnd: (DragEndDetails details){
//               if(details.primaryVelocity!>0)
//               {
//                 pageController.previousPage(
//                     duration: (Duration(milliseconds: 500)),
//                     curve: Curves.ease);
//               }
//               else if(details.primaryVelocity!<0)
//               {
//                 pageController.nextPage(duration:(
//                     Duration(milliseconds: 500)),
//                     curve: Curves.ease);
//
//               }
//             },
//             child: PageView(
//               controller: pageController,
//               onPageChanged: (int page){
//                 setState(() {
//                   Currentpage=page;
//                 });
//               },
//               children: [
//                 SignupView(),
//                 Signupsec()
//
//
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signupsec.dart';
import 'package:flutter/material.dart';

class SignUpScroll extends StatefulWidget {
  const SignUpScroll({super.key});

  @override
  State<SignUpScroll> createState() => _SignUpScrollState();
}

class _SignUpScrollState extends State<SignUpScroll> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor, // Use AppTheme for consistent styling
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.greenColor,
          unselectedLabelColor: Colors.black,
          indicatorColor: AppColors.greenColor,
          indicatorWeight: 3,
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Signup'),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.greenColor,
              AppColors.secondaryColor,
              Color(0xFF1A237E),
            ],
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: const [
            SignupView(),
            SignupView(),
          ],
        ),
      ),
    );
  }
}