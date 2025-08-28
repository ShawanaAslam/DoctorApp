import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/mytextformfield.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/provider/providerView/KycBegins/kycBeginsView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class ProfessionalKycView extends StatefulWidget {
  const ProfessionalKycView({super.key});

  @override
  State<ProfessionalKycView> createState() => _ProfessionalKycViewState();
}

class _ProfessionalKycViewState extends State<ProfessionalKycView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Center(
                child: TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                           fntsze: 20,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                   fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(txt: 'Professional Kyc',clr:Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
              SizedBox(height: 50,),
              ButtonWidget(txt: 'Done', ontp: (){

                Get.to(()=>KycBeginsView());
              })
          
            ],
          ),
        ),
      ),
    );
  }
}
