
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:flutter/material.dart';

import '../../../controller/widgets/text_widget.dart';

class ProfileViewTwo extends StatefulWidget {
  const ProfileViewTwo({super.key});

  @override
  State<ProfileViewTwo> createState() => _ProfileViewTwoState();
}

class _ProfileViewTwoState extends State<ProfileViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: TextWidget(txt: 'Profile',clr: Colors.black,fntwt: FontWeight.w500,),
    centerTitle: true,
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
    ),
    body: Center(
    child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: SingleChildScrollView(
      child: Column(
      children: [
      Stack(
      
      children: [
      CircleAvatar(
      radius: 45,
      backgroundColor: Colors.grey[300],
      child: Icon(Icons.person,size: 50,),
      ),
      Positioned(
      bottom: 1,
      right: 1,
      child: CircleAvatar(
      radius: 15,
      backgroundColor: Colors.green[300],
      child: Icon(Icons.edit,color: Colors.white,size: 20,)),
      ),
      ],
      ),
        SizedBox(height: 20,),
        Row(
          children: [
            SizedBox(width: 2,),
            TextWidget(txt: 'Name',clr: Colors.black,fntwt: FontWeight.w400,
            fntsze: 14,),
          ],
        ),
       ProfileFormfieldwidget(txt:'Adeowla Abdulazeez'),
      
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 2,),
            TextWidget(txt: 'Phone Number',clr: Colors.black,fntwt: FontWeight.w400,
              fntsze: 14,),
          ],
        ),
        ProfileFormfieldwidget(txt:'0801 666 6666',txt1: 'Change',)
      ,
      
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 2,),
            TextWidget(txt: 'Email',clr: Colors.black,fntwt: FontWeight.w400,fntsze: 14,),
          ],
        ),
        ProfileFormfieldwidget(txt:'Email@domainname.com',),
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 2,),
            TextWidget(txt: 'Date of Birth',clr: Colors.black,fntwt: FontWeight.w400,fntsze: 14,),
          ],
        ),
        ProfileFormfieldwidget(txt:'DD/MM/YY',),
        SizedBox(height: 5,),
        Row(
          children: [
            SizedBox(width: 2,),
            TextWidget(txt: 'Gender',clr: Colors.black,fntwt: FontWeight.w400,fntsze: 14,),
          ],
        ),
        ProfileFormfieldwidget(txt:'Select',icn: Icons.keyboard_arrow_down_outlined,),
        SizedBox(height: 50,),

        ButtonWidget(txt: 'Update Profile', ontp:(){},)
      
      ],


      
      ),
    )
    )));
  }
}
