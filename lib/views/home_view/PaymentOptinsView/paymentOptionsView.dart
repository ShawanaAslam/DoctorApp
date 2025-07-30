
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:flutter/material.dart';

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
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
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
              ProfileFormfieldwidget(txt: 'Add New Card',icn1: Icons.card_membership_sharp,
                  txt1: 'Add',),
              SizedBox(height: 20,),
              Row(
                children: [
                  TextWidget(txt: 'Crypto Payment',
                    clr: Colors.black,fntwt: FontWeight.w500,),
                ],
              ),
              SizedBox(height: 15,),
              ProfileFormfieldwidget(txt: 'Bitcoin Payment',icn1: Icons.currency_bitcoin,
                txt1: 'Add',),
              SizedBox(height: 15,),
              Row(
                children: [
                  TextWidget(txt: 'More Payment Options',
                    clr: Colors.black,fntwt: FontWeight.w500,),
                ],
              ),
          
              SizedBox(height: 15,),
              ProfileFormfieldwidget(txt: 'Payal',icn1: Icons.payment,
                txt1: 'Add',),
              SizedBox(height: 15,),
              ProfileFormfieldwidget(txt: 'Apple Pay',icn1: Icons.payment_outlined,
                txt1: 'Add',),
            ],
          ),
        ),
      ),
    );
  }
}
