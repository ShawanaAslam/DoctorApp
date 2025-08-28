import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/provider/providerView/profile/secProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/images.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),
        )
      ,
      title: TextWidget(txt: 'Profile',clr: Colors.black,),
      centerTitle: true,
      actions: [
        TextWidget(txt: 'Save',clr: AppColors.greenColor,),
        SizedBox(width: 10,)
      ],),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [

              CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.greenColor,
                child: CircleAvatar(
                  radius: 38,
                 // backgroundImage:AppImages.man,
                ),
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Full name*',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Bio',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Email id*',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Phone number*',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Address*',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Date of Birth*',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 10,),
              ButtonWidget(txt: 'Save Changes', ontp: (){
                Get.to(()=>SecProfile());
              })

            ],
          ),
        ),
      ),
    );
  }
}
