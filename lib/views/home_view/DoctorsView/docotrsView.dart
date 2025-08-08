//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../controller/constants/colors.dart';
// import '../../../controller/constants/images.dart';
// import '../../../controller/widgets/profileFormFieldWidget.dart';
// import '../DoctorDetailView/doctorDetailView.dart';
// import 'DoctorViewwidgets/docConWidget.dart';
// //import 'doctor_details_screen.dart';
//
// class DoctorsView extends StatelessWidget {
//   const DoctorsView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         leading: IconButton(onPressed: (){
//           Get.back();
//         }, icon: Icon(Icons.arrow_back),),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text("Doctors", style: TextStyle(color: Colors.black)),
//         centerTitle: true,
//        actions: [
//          Icon(Icons.transgender),
//          SizedBox(width: 10,)
//        ],
//
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               ProfileFormfieldwidget(txt: 'Search doctors, hospital....',
//                 icn1: Icons.search,),
//               SizedBox(height: 10),
//
//
//               Row(
//                 children: [
//                   DocConWidget(
//                     txt: 'Dr. Taiwo',
//                     txt1: 'Oncologist',
//                     txt2: '4.3',
//                     txt3: '(150 Reviews)',
//                     imagePath: MyImages.man,
//                     onTap: () {
//                       Get.to(() => const DoctorDetailView(), arguments: {
//                         'name': 'Dr. Taiwo',
//                         'specialty': 'Oncologist',
//                         'rating': '4.3',
//                         'reviews': '(150 Reviews)',
//                         'image': MyImages.man,
//                         'about': 'Experienced oncologist with a focus on patient well-being.',
//                         'workingTime': 'Mon-Sat (08:30 AM - 09:00 PM)',
//                       });
//                     },
//                   ),
//                   SizedBox(width: 20),
//                   DocConWidget(
//                     txt: 'Dr. farhad',
//                     txt1: 'Oncologist',
//                     txt2: '4.3',
//                     txt3: '(150 Reviews)',
//                     imagePath: MyImages.man,
//                     onTap: () {
//                       Get.to(() => const DoctorDetailView(), arguments: {
//                         'name': 'Dr. Taiwo',
//                         'specialty': 'Oncolo',
//                         'rating': '4.3',
//                         'reviews': '(150 Reviews)',
//                         'image': MyImages.man,
//                         'about': 'Experienced oncologist with a focus on patient well-being.',
//                         'workingTime': 'Mon-Sat (08:30 AM - 09:00 PM)',
//                       });
//                     },
//                   ),
//                   // Add more DocConWidgets similarly
//                 ],
//               ),
//
//
//               SizedBox(height: 10,),
//               // Row(
//               //   children: [
//               //     DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
//               //       txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,
//               //
//               //     ),
//               //     SizedBox(width: 20,),
//               //     DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
//               //       txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,)
//               //   ],
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//////////////////////////
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/constants/colors.dart';
import '../../../controller/constants/images.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../DoctorDetailView/doctorDetailView.dart';
import 'DoctorViewwidgets/docConWidget.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text("Doctors", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Icon(Icons.filter_alt_outlined),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileFormfieldwidget(
                txt: 'Search doctors, hospital....',
                icn1: Icons.search,
              ),
              SizedBox(height: 10),

              // 1st Row
              Row(
                children: [
                  DocConWidget(
                    txt: 'Dr. Taiwo',
                    txt1: 'Oncologist',
                    txt2: '4.3',
                    txt3: '(150 Reviews)',
                    imagePath: AppImages.man,
                    onTap: () {
                      Get.to(() =>  DoctorDetailView(), arguments: {
                        'name': 'Dr. Taiwo',
                        'specialty': 'Oncologist',
                        'image': AppImages.man,
                        'about': 'Expert in cancer treatment\n with 10+ years experience.',
                        'workingTime': 'Mon - Fri (10:00 AM - 5:00 PM)',
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  DocConWidget(
                    txt: 'Dr. Farhad',
                    txt1: 'Dermatologist',
                    txt2: '4.8',
                    txt3: '(210 Reviews)',
                    imagePath: AppImages.man,
                    onTap: () {
                      Get.to(() =>  DoctorDetailView(), arguments: {
                        'name': 'Dr. Farhad',
                        'specialty': 'Dermatologist',
                        'image': AppImages.man,
                        'about': 'Specializes in skin treatments\n and cosmetic procedures.',
                        'workingTime': 'Tue - Sat (11:00 AM - 6:00 PM)',
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 10),

              // 2nd Row
              Row(
                children: [
                  DocConWidget(
                    txt: 'Dr. Ayesha',
                    txt1: 'Cardiologist',
                    txt2: '4.5',
                    txt3: '(180 Reviews)',
                    imagePath: AppImages.man,
                    onTap: () {
                      Get.to(() => DoctorDetailView(), arguments: {
                        'name': 'Dr. Ayesha',
                        'specialty': 'Cardiologist',
                        'image': AppImages.man,
                        'about':
                        'Treats heart diseases and provides\nconsultations on blood pressure.',
                        'workingTime': 'Mon - Sat (9:00 AM - 4:00 PM)',
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  DocConWidget(
                    txt: 'Dr. Rehman',
                    txt1: 'Neurologist',
                    txt2: '4.7',
                    txt3: '(95 Reviews)',
                    imagePath: AppImages.man,
                    onTap: () {
                      Get.to(() =>  DoctorDetailView(), arguments: {
                        'name': 'Dr. Rehman',
                        'specialty': 'Neurologist',
                        'image': AppImages.man,
                        'about': 'Experienced in treating \nnervous system disorders.',
                        'workingTime': 'Wed - Sun (12:00 PM - 8:00 PM)',
                      });
                    },
                  ),
                ],
              ),

              // You can add more rows similarly...
            ],
          ),
        ),
      ),
    );
  }
}
