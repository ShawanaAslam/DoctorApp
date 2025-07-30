
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/constants/images.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../DoctorDetailView/doctorDetailView.dart';
import 'DoctorViewwidgets/docConWidget.dart';
//import 'doctor_details_screen.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Doctors", style: TextStyle(color: Colors.black)),
        centerTitle: true,
       actions: [
         Icon(Icons.transgender),
         SizedBox(width: 10,)
       ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileFormfieldwidget(txt: 'Search doctors, hospital....',
                icn1: Icons.search,),
              SizedBox(height: 10),

            Row(
              children: [
             DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
               txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,

             ),
                SizedBox(width: 20,),
                DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
          txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,)
              ],
            ),
SizedBox(height: 10,),
              Row(
                children: [
                  DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
                    txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,

                  ),
                  SizedBox(width: 20,),
                  DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
                    txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
                    txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,

                  ),
                  SizedBox(width: 20,),
                  DocConWidget(txt: 'Dr.Taiwo', txt1: 'Oncologists',
                    txt2: '4.3', txt3: '(150 Reviews)', imagePath: MyImages.man,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


