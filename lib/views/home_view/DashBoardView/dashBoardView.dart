
import 'package:doctorapp/controller/constants/images.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/controller/widgets/rowWidget.dart';
import 'package:doctorapp/views/home_view/AllAppointmentView/allAppointmentView.dart';
import 'package:doctorapp/views/home_view/DashBoardView/DashBoardWidgets/dashConWidget.dart';
import 'package:doctorapp/views/home_view/DoctorsView/docotrsView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/widgets/text_widget.dart';
import '../SearchResultView/SearchResulrWidget/searchResultTab.dart';
import '../filterView/filterView.dart';
import 'DashBoardWidgets/DashSelectedWidget.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  int check = 0;
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // default back button hata dega
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300], // Dummy bg color
              child: Icon(Icons.person, color: Colors.white), // Optional icon
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  txt: "Hi, Azeez",
                  clr: Colors.black,
                  fntsze: 14,
                  fntwt: FontWeight.w400,
                ),
                TextWidget(
                  txt: "How are you today?",
                  clr: Colors.grey,
                  fntsze: 14,
                  fntwt: FontWeight.w400,
                ),
              ],
            ),

          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            child: Icon(Icons.notification_important_outlined),
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 100,
                    child:
                    ProfileFormfieldwidget(ontp:(){
                      Get.to(()=>DoctorsView());
                    },txt: 'Search Doctor, Pharmacy.....',
                      icn1: Icons.search,),
                  ),
                  SizedBox(width: 6,),
                  Expanded(
                    flex:18 ,
                      child:
                  Container(
                    height: 50,
                  // width: 50,
                    decoration: BoxDecoration(
                        color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
          
                   child: IconButton(icon:Icon(Icons.link)
                     ,color: Colors.white,onPressed: (){
                     Get.to(()=>FilterView());
                     },),
                  ))
                ],
              ),
              SizedBox(height: 5,),
              RowWidget(txt: 'Upcoming Shcedule', txt1: 'See all',
                clr:Colors.black ,ontp: (){
                Get.to(()=>AllAppointmentView());
                },
                clr1: AppColors.greenColor,),
          DashConWidget(),
          
              Row(
                children: [
                  DashSelectedWidget(
                    ontap: () {
                      check = 1;
                      setState(() {
                        Get.to(()=>DoctorsView());
                      });
                    },
                    hgt: 50,
                    wdt: 60,
                    check: check,
                    icon: Icons.swap_calls,
                    check2: 1,
                    text: 'Doctor',
          
                  ),
          SizedBox(width: 10,),
                  DashSelectedWidget(
                    ontap: () {
                      check = 2;
                      setState(() {});
                    },
                    hgt: 50,
                    wdt: 70,
                    check: check,
                    icon: Icons.medical_information_outlined,
                    check2: 2,
                    text: 'Pharmacy',
          
                  ),
                  SizedBox(width: 10,),
                  DashSelectedWidget(
                    ontap: () {
                      check = 3;
                      setState(() {});
                    },
                    hgt: 50,
                    wdt: 75,
                    check: check,
                    icon: Icons.amp_stories_outlined,
                    check2: 3,
                    text: 'Ambulance',
          
                  ),
                  SizedBox(width: 5,),
                  DashSelectedWidget(
                    ontap: () {
                      check = 4;
                      setState(() {});
                    },
                    hgt: 50,
                    wdt: 60,
                    check: check,
                    icon: Icons.local_hospital_outlined,
                    check2: 4,
                    text: 'Hospital',
          
                  ),
                ],
              ),
          
              RowWidget(txt: 'To Doctor', txt1: 'See all',
                clr:Colors.black ,
                clr1: AppColors.greenColor,),
               Column(
                 children: [
                   SizedBox(height: 10,),
                   SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                     txt2: '4.4',txt3: '503 Reviews',),
                   SizedBox(height: 10,),
                   SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                     txt2: '4.4',txt3: '503 Reviews',),
                   SizedBox(height: 10,),
                   SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                     txt2: '4.4',txt3: '503 Reviews',),
                   SizedBox(height: 10,),
                   SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                     txt2: '4.4',txt3: '503 Reviews',),
                 ],
               ),
          
            ],
          ),
        )
    )
    );
  }
}




