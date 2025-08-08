


import 'package:doctorapp/controller/widgets/selectedButton.dart';
import 'package:doctorapp/views/home_view/AllAppointmentView/AllAppointmentWidgets/cancelTabWidget.dart';
import 'package:doctorapp/views/home_view/AllAppointmentView/AllAppointmentWidgets/containerWidget.dart';
import 'package:doctorapp/views/home_view/AppointmentView/appointmentView.dart';
import 'package:doctorapp/views/home_view/NewAppoimtmentView/newAppointmentview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/colors.dart';
import '../CancelAppointment/cancelAppointment.dart';
import '../helpCenterView/HelpCenterWidget/helpExpansionWidget.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../../../controller/widgets/text_widget.dart';

class AllAppointmentView extends StatefulWidget {
  const AllAppointmentView({super.key});

  @override
  State<AllAppointmentView> createState() => _AllAppointmentViewState();
}

class _AllAppointmentViewState extends State<AllAppointmentView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int check = 0;
  String selected = 'Cancel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      appBar: AppBar(
        title: TextWidget(
          txt: 'All Appointment',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [

            TabBar(
              controller: _tabController,
              indicatorColor: AppColors.greenColor,
              indicatorWeight: 3,
              labelColor:AppColors.greenColor ,
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: AppColors.greenColor),
                insets: EdgeInsets.symmetric(horizontal: -30),
              ),
              tabs: [
                Tab(text: 'Upcoming'),
                Tab(text: 'Completed'),
                Tab(text: 'Canceled'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [

                  /////////////////////////////////////////////////////////////

                  // first tab (upcoming) with vertical scroll
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                ContainerWidget(
                  text:'NOV, 19 2023-9:00 AM' ,
                  txt1: 'Doctor Kenny Adeola',
                  txt2: 'General Parttinor',
                  txt3: 'Online',
                  txt4: 'Booking ID:',
                  txt5: '#48348e27c',
                  txt6: 'Cancel',
                  txt7: 'Reshedule',
                  ontp1: () {
                    Get.to(()=>NewAppointmentview());
                    setState(() {
                      selected = 'Yes';
                    });
                  },
                  cnclontp: () {
                    Get.to(()=>CancelAppointmentView());
                    setState(() {
                      selected = 'Cancel';
                    });
                  },
                 conontp: (){
                Get.to(()=>AppointmentView());

              },),
                    SizedBox(height: 10,),
                    ContainerWidget(
                      text:'NOV, 19 2023-9:00 AM' ,
                      txt1: 'Doctor Kenny Adeola',
                      txt2: 'General Parttinor',
                      txt3: 'Online',
                      txt4: 'Booking ID:',
                      txt5: '#48348e27c',
                      txt6: 'Cancel',
                      txt7: 'Reshedule',
                      ontp1: () {
                        Get.to(()=>NewAppointmentview());
                        setState(() {
                          selected = 'Yes';
                        });
                      },
                      cnclontp: () {
                        Get.to(()=>CancelAppointmentView());
                        setState(() {
                          selected = 'Cancel';
                        });
                      },
                     conontp: (){
                        Get.to(()=>AppointmentView());
                      },),
                    SizedBox(height: 10,),
                    ContainerWidget(
                      text:'NOV, 19 2023-9:00 AM' ,
                      txt1: 'Doctor Kenny Adeola',
                      txt2: 'General Parttinor',
                      txt3: 'Online',
                      txt4: 'Booking ID:',
                      txt5: '#48348e27c',
                      txt6: 'Cancel',
                      txt7: 'Reshedule',
                      ontp1: () {
                        Get.to(()=>NewAppointmentview());
                        setState(() {
                          selected = 'Yes';
                        });
                      },
                      cnclontp: () {
                        Get.to(()=>CancelAppointmentView());
                        setState(() {
                          selected = 'Cancel';
                        });
                      },
                      conontp: (){
                        Get.to(()=>AppointmentView());
                      },)
                  ],
                ),
              ),


                 //////////////////////////////////////////////////////////////////

                  //  Second tab (Completed)

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        ContainerWidget(
                          text:'NOV, 19 2023-9:00 AM' ,
                          txt1: 'Doctor Kenny Adeola',
                          txt2: 'General Parttinor',
                          txt3: 'Online',
                          txt4: 'Booking ID:',
                          txt5: '#48348e27c',
                          txt6: 'Cancel',
                          txt7: 'Add a Review',
                          cnclontp: () {
                            Get.to(()=>CancelAppointmentView());
                            setState(() {
                              selected = 'Cancel';
                            });
                          },
                          ontp1: () {
                            setState(() {
                              selected = 'Yes';
                            });
                          },
                         conontp: (){
                            Get.to(()=>AppointmentView());
                          },),
                        SizedBox(height: 10,),
                        ContainerWidget(
                          text:'NOV, 19 2023-9:00 AM' ,
                          txt1: 'Doctor Kenny Adeola',
                          txt2: 'General Parttinor',
                          txt3: 'Online',
                          txt4: 'Booking ID:',
                          txt5: '#48348e27c',
                          txt6: 'Cancel',
                          txt7: 'Add a Review',
                          cnclontp: () {
                            Get.to(()=>CancelAppointmentView());
                            setState(() {
                              selected = 'Cancel';
                            });
                          },
                          ontp1: () {
                            setState(() {
                              selected = 'Yes';
                            });
                          },
                          conontp: (){
                            Get.to(()=>AppointmentView());
                          },),
                        SizedBox(height: 10,),
                        ContainerWidget(
                          text:'NOV, 19 2023-9:00 AM' ,
                          txt1: 'Doctor Kenny Adeola',
                          txt2: 'General Parttinor',
                          txt3: 'Online',
                          txt4: 'Booking ID:',
                          txt5: '#48348e27c',
                          txt6: 'Cancel',
                          txt7: 'Add a Review',
                          cnclontp: () {
                            Get.to(()=>CancelAppointmentView());
                            setState(() {
                              selected = 'Cancel';
                            });
                          },
                          ontp1: () {
                            setState(() {
                              selected = 'Yes';
                            });
                          },
                          conontp: (){
                            Get.to(()=>AppointmentView());
                          },)
                      ],
                    ),
                  ),
                  

                  /////////////////////////////////////////////////////////////

                  //  3r tab tab (Cancel)
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                       CancelTabWidget(),
                        SizedBox(height: 10,),
                        CancelTabWidget(),
                        SizedBox(height: 10,),
                        CancelTabWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
