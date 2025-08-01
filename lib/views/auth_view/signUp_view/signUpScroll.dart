



import 'package:doctorapp/views/auth_view/signUp_view/signup_view.dart';
import 'package:doctorapp/views/auth_view/signUp_view/signupsec.dart';
import 'package:flutter/material.dart';




class SignUpScroll extends StatefulWidget {
  const SignUpScroll({super.key});

  @override
  State<SignUpScroll> createState() => _SignUpScrollState();
}

class _SignUpScrollState extends State<SignUpScroll> {

  final PageController pageController=PageController();
  int Currentpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context,orentation){
          return GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details){
              if(details.primaryVelocity!>0)
              {
                pageController.previousPage(
                    duration: (Duration(milliseconds: 500)),
                    curve: Curves.ease);
              }
              else if(details.primaryVelocity!<0)
              {
                pageController.nextPage(duration:(
                    Duration(milliseconds: 500)),
                    curve: Curves.ease);

              }
            },
            child: PageView(
              controller: pageController,
              onPageChanged: (int page){
                setState(() {
                  Currentpage=page;
                });
              },
              children: [
                SignupView(),
                Signupsec()


              ],
            ),
          );
        },
      ),
    );
  }
}

