



import 'package:doctorapp/controller/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../views/starting_view/onboaring_view/onboardingWidget/onboarding_widget.dart';



class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  final PageController pageController=PageController();
  int Currentpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
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
                onboarding_widget(text: 'Talk to a Doctor',
                  icon:'assets/salad.png',
                  text1: 'connects patients with doctors who\n'
                      '  share their language and ethnicity',),
                onboarding_widget(text: 'Call an ambulance'
                    , icon:'',//MyImages.salad,
                    text1: ' request for an ambulance 34/7\n'
                        '         through MyDoctor app'),

                onboarding_widget(text:'Schedule an appointment'
                    , icon:'',//MyImages.fruits,
                    text1: '       schedule an appointment with \n'
                        '   a certified doctor on MyDoctor app'),


              ],
            ),
          );
        },
      ),
    );
  }
}

