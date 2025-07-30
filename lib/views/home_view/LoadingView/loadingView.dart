//
//
// import 'package:flutter/material.dart';
// //import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/percent_indicator.dart';
//
// class LoadingScreen extends StatelessWidget {
//   const LoadingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Top Text
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Text(
//                   "We are compiling a list of Doctors based on your ethnicity",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//
//               // Circular Percent Indicator
//               CircularPercentIndicator(
//                 radius: 60.0,
//                 lineWidth: 10.0,
//                 percent: 0.75,
//                 animation: true,
//                 center: const Text(
//                   "75%",
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 progressColor: Colors.green,
//                 backgroundColor: Colors.pink.shade100,
//                 circularStrokeCap: CircularStrokeCap.round,
//               ),
//               const SizedBox(height: 20),
//
//               // Loading Text
//               const Text(
//                 "Loading...",
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../controller/widgets/text_widget.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(

            children: [
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),

                child: TextWidget(txt:
                  "We are compiling a list of\n"
                      " Doctors based on your ethnicity",


                    fntsze: 16,
                    fntwt: FontWeight.w500,
                    clr: Colors.black,
                  ),
                ),

               SizedBox(height: 50),

              // Simple circular progress with percent text
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(
                      value: 0.75,
                      strokeWidth: 15,
                      backgroundColor: Colors.pink.shade100,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                   TextWidget(txt:
                    "75%",

                      fntsze: 22.0,
                      fntwt: FontWeight.bold,
                      clr: Colors.black,
                    ),

                ],
              ),

               SizedBox(height: 220),
               TextWidget(txt:
                "Loading...",

                  fntsze: 14,
                  clr: Colors.grey,
                ),

            ],
          ),
        ),
      ),
    );
  }
}
