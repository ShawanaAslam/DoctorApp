
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
        // backgroundColor: AppColors.scaffoldColor, // Use AppTheme for consistent styling
        // title: Text(
        //   'Sign Up',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //   ),
        //
        // ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.greenColor,
          unselectedLabelColor: Colors.black,
          indicatorColor: AppColors.greenColor,
          indicatorWeight: 3,
          tabs:  [
            Tab(text: 'Signup'),
            Tab(text: 'Signup'),
          ],
        ),
      ),
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.greenColor,
            //  AppColors.secondaryColor,
              Color(0xFF1A237E),
            ],
          ),
        ),
        child: TabBarView(
          controller: _tabController,
          children: [
            SignupView(),
            Signupsec(),
          ],
        ),
      ),
    );
  }
}