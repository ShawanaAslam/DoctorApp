
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/views/home_view/AddCardView/addCardView.dart';
import 'package:doctorapp/views/home_view/PaymentOptionsView/PaymentOptionsWidget/paymentFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

class PaymentOptionsView extends StatefulWidget {
  const PaymentOptionsView({super.key});

  @override
  State<PaymentOptionsView> createState() => _PaymentOptionsViewState();
}

class _PaymentOptionsViewState extends State<PaymentOptionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Payment Options',
          clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  TextWidget(txt: 'Credit and Debit Card',
                    clr: Colors.black,fntwt: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 10,),

              PaymentFieldWidget(txt: 'Add New Card',
                txt1: 'Add',onTap: (){
                Get.to(()=>AddCardView());
                },
                icn:  Icons.card_membership_sharp,),
              SizedBox(height: 20,),
              Row(
                children: [
                  TextWidget(txt: 'Crypto Payment',
                    clr: Colors.black,fntwt: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 15,),
              PaymentFieldWidget(txt: 'Bitcoin Payment',
                txt1: 'Add',onTap: (){
                  Get.to(()=>AddCardView());
                },
                icn:  Icons.card_membership_sharp,),

              SizedBox(height: 15,),
              Row(
                children: [
                  TextWidget(txt: 'More Payment Options',
                    clr: Colors.black,fntwt: FontWeight.w500,),
                ],
              ),
          
              SizedBox(height: 15,),
              PaymentFieldWidget(txt: 'Payal',
                txt1: 'Add',onTap: (){
                  Get.to(()=>AddCardView());
                },
                icn:  Icons.card_membership_sharp,),

              SizedBox(height: 15,),
              PaymentFieldWidget(txt: 'Apple Pay',
                txt1: 'Add',onTap: (){
                  Get.to(()=>AddCardView());
                },
                icn:  Icons.card_membership_sharp,),

            ],
          ),
        ),
      ),
    );
  }
}
