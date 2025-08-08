
import 'package:doctorapp/controller/widgets/rowWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../../../controller/widgets/text_widget.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      appBar: AppBar(
        title: TextWidget(txt: 'Add Card',
          clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius:
                BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,

                  )
                ),
child: Column(
  children: [
    SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

           Icon(Icons.card_travel_rounded,color: Colors.yellow,size: 30,),

        ],
      ),
      TextWidget(txt:'Visa',clr: Colors.white
        ,fntsze: 25,fntwt: FontWeight.w800,),

            ]),
    ),
    SizedBox(height: 10,),
    TextWidget(txt: '**** **** **** 2345',fntsze: 29,
      fntwt:FontWeight.w500 ,),
    Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: RowWidget(txt: 'Card Holder name', txt1: "Expiry Date",
        clr1: Colors.white,
        clr: Colors.white,),
    ),

    Padding(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: RowWidget(txt: 'Noman Manzoor', txt1: "02/30",
        clr1: Colors.white,
        clr: Colors.white,
      ),
    ),
    
  ],
)

),
            SizedBox(height: 15,),
            Row(
              children: [
                TextWidget(txt: 'Card Holder Name',
                  clr: Colors.black,fntwt: FontWeight.w500,),
              ],
            ),

            SizedBox(height: 5,),
            ProfileFormfieldwidget(txt: 'Adewola Abdulazeez'
              ),

            SizedBox(height: 10,),
            Row(
              children: [
                TextWidget(txt: 'Card Number',
                  clr: Colors.black,fntwt: FontWeight.w500,),
              ],
            ),

            SizedBox(height: 5,),
            ProfileFormfieldwidget(txt: '2134 6789 1245 6543'
            ),
            SizedBox(height: 20,),
Row(
  children: [
    Expanded(child:  Column(
      children: [
        Row(
          children: [
            TextWidget(txt: 'Card Number',
              clr: Colors.black,fntwt: FontWeight.w500,),
          ],
        ),
        ProfileFormfieldwidget(txt: '2134 6789 1245 6543'
        ),
      ],
    ),),
    SizedBox(width: 10,),
    Expanded(child:  Column(
      children: [
        Row(
          children: [
            TextWidget(txt: 'CVV',
              clr: Colors.black,fntwt: FontWeight.w500,),
          ],
        ),
        ProfileFormfieldwidget(txt: '2134 6789 1245 6543'
        ),
      ],
    ),)
  ],
),
SizedBox(height: 20,),
Row(
  children: [
    InkWell(
    onTap: () {
      setState(() {
      isChecked = !isChecked;
      });
      },
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: isChecked ? Colors.green : Colors.white,
            border: Border.all(
              color: isChecked ? Colors.green : Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(
            Icons.check,
            size: 20,
            color: isChecked ? Colors.white : Colors.black,
          ),
        ),
      ),
SizedBox(width: 10,),
    TextWidget(txt: 'Save Card',
      clr: Colors.black,fntwt: FontWeight.w500,),
  ],
),

SizedBox(height: 40,),

Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ButtonWidget(txt: 'Add Card', ontp: () {  },),
  ],
)

          ],
        ),
      ),

    );
  }
}
