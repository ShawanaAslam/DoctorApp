
import 'package:doctorapp/controller/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';
import 'DoctorDetailWidget/communiBox.dart';
import 'DoctorDetailWidget/statusCard.dart';

class DoctorDetailView extends StatefulWidget {
  const DoctorDetailView({super.key});

  @override
  State<DoctorDetailView> createState() => _DoctorDetailViewState();
}

class _DoctorDetailViewState extends State<DoctorDetailView> {
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body:
      Padding(
        padding:  EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Center(
                child: CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(args['image'],),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //SizedBox(width: 30,),
                    Column(
                      children: [
                        TextWidget(txt: args['name'],
                          fntwt: FontWeight.w500
                          ,clr: Colors.black,),
                        TextWidget(txt: args['specialty'],
                          fntwt: FontWeight.w500
                          ,clr: Colors.grey,),
                      ],
                    ),

                  ]
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  StatsCard(
                    iconColor:Color(0xFF60CFFF) ,
                    backgroundColor:  Color(0xFFE6F7FF),
                    numberText: '1000+', subtitle: 'Patients',
                    icon: Icons.person_outline_outlined,),
SizedBox(width: 10,),
                  StatsCard(
                    iconColor:Colors.pink ,
                    backgroundColor:  Colors.pink.shade50,
                    numberText: '1000+', subtitle: 'Patients',
                    icon: Icons.access_time_filled,),
                  SizedBox(width: 10,),
                  StatsCard(
                    iconColor:Colors.yellow,
                    backgroundColor:  Colors.yellow.shade100,
                    numberText: '1000+', subtitle: 'Patients',
                    icon: Icons.star_border,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 30,),
                    TextWidget(txt: 'About Doctor',
                      fntwt: FontWeight.w500
                      ,clr: Colors.black,),

                  ]
              ),
              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 30,),
                    TextWidget(txt:  args['about'],
                    // 'About Doctor ...............\n'
                    //     '.......................................\n'
                    //     '.......................................',
                      fntwt: FontWeight.w500
                      ,clr: Colors.grey,),

                  ]
              ),
              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 30,),
                    TextWidget(txt: 'Working Time',
                      fntwt: FontWeight.w500
                      ,clr: Colors.black,),

                  ]
              ),
              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    TextWidget(txt: 'Mon-Sat(08:30 AM-09:00PM)',
                      fntwt: FontWeight.w500
                      ,clr: Colors.grey,),

                  ]
              ),
              SizedBox(height: 5,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //SizedBox(width: 30,),
                    TextWidget(txt: 'Communication',
                      fntwt: FontWeight.w500
                      ,clr: Colors.black,),

                  ]
              ),
              SizedBox(height: 10,),
        CommunicationBox(
          icnColor: Colors.pink,
                  icon: Icons.message,
                  txt: "Messaging",
                  txt1: 'chat me up, share photos',
                  bgColor: Colors.pink.shade50,
                ),
              SizedBox(height: 10,),
              CommunicationBox(
                icnColor: Colors.blue,
                icon: Icons.call,
                txt: "Audio Call",
                txt1: 'Call your doctor',
                bgColor: Colors.blue.shade50,
              ),
              SizedBox(height: 10,),
              CommunicationBox(
                icnColor: Colors.red,
                icon: Icons.videocam_outlined,
                txt: "Messaging",
                txt1: 'chat me up, share photos',
                bgColor: Colors.pink.shade50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////
