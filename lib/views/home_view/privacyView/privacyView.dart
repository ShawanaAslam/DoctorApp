
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/widgets/text_widget.dart';

class PrivacyView extends StatefulWidget {
  const PrivacyView({super.key});

  @override
  State<PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar:  AppBar(
        title: TextWidget(
          txt: 'Privacy Policy',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: 'Cancilation Policy',
                    clr: Colors.green,
                    fntwt: FontWeight.w800,
                  ),
                ],
              ),
            SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Text('Effective Date:[Date]',style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: 'OverView : This Cancilation Policy Outlines\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: 'Terms & Conditions',
                    clr: Colors.green,
                    fntwt: FontWeight.w800,
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Text('Effective Date:[Date]',style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: '1. Eligibility: This Cancilation Policy Outline\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: '2.Eligibility: This Cancilation Policy Outline\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: '3.Eligibility: This Cancilation Policy Outline\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: '4.Eligibility: This Cancilation Policy Outline\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  TextWidget(
                    txt: '5.Eligibility: This Cancilation Policy Outline\n'
                        'the procedure and conditions related to the \n'
                        'cancilation ..............................',
                    clr: Colors.black,
                    fntsze: 15,
                    fntwt: FontWeight.w400,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
