
import 'dart:io';
import 'package:doctorapp/provider/providerView/AvailabilityView/availabilityView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/controller/widgets/button_widget.dart';
import 'package:doctorapp/controller/widgets/profileFormFieldWidget.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';

class KycBeginsView extends StatefulWidget {
  const KycBeginsView({super.key});

  @override
  State<KycBeginsView> createState() => _KycBeginsViewState();
}

class _KycBeginsViewState extends State<KycBeginsView> {
  File? aadhaarImage;
  File? documentImage;

  final ImagePicker _picker = ImagePicker();
  String selectedButton = "";

  /// Aadhaar photo picker (Camera)
  Future<void> pickAadhaarImage() async {
    final pickedFile =
    await _picker.pickImage(source: ImageSource.camera, imageQuality: 70);
    if (pickedFile != null) {
      setState(() {
        aadhaarImage = File(pickedFile.path);
      });
    }
  }

  /// Upload documents picker (Gallery)
  Future<void> pickDocumentImage() async {
    final pickedFile =
    await _picker.pickImage(source: ImageSource.gallery, imageQuality: 70);
    if (pickedFile != null) {
      setState(() {
        documentImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: Padding(
        padding:  EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: TextWidget(
                  txt: 'KYC Begins',
                  clr: Colors.black,
                  fntsze: 20,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    txt: 'Personal identity*',
                    clr: Colors.black,
                    fntwt: FontWeight.w500,
                    fntsze: 16,
                  ),
                ],
              ),
              ProfileFormfieldwidget(txt: ''),
               SizedBox(height: 10),
              ProfileFormfieldwidget(txt: ''),
               SizedBox(height: 10),

              /// Upload Documents (Gallery)
              GestureDetector(
                onTap: pickDocumentImage,
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: documentImage == null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.upload, size: 40, color: Colors.grey),
                      SizedBox(height: 8),
                      Text("Upload Documents"),
                    ],
                  )
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      documentImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              /// Aadhaar Verify by Camera
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Verify Your Aadhaar by Clicking Photo",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.camera_alt_outlined),
                    onPressed: pickAadhaarImage,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),

              /// Aadhaar Image Preview
              if (aadhaarImage != null) ...[
                 SizedBox(height: 10),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      aadhaarImage!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ],

              SizedBox(height: 10),

              /// Front & Back Side
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text("Front Side")),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text("Back Side")),
                    ),
                  ),
                ],
              ),

               SizedBox(height: 10),

    // nxt button
    GestureDetector(
    onTap: () {
      Get.to(()=>AvailabilityView());
    setState(() {
    selectedButton = "Next";
    });
    },
    child: Container(
    height: 50,
    width: double.infinity,
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: selectedButton == "done" ? Colors.green : Colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.black),
    ),
    child: Text(
    "Next",
    style: TextStyle(
    color: selectedButton == "done"
    ? Colors.white
        : Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    ),

    const SizedBox(height: 10),

    // ❌ Not Now button
    GestureDetector(
    onTap: () {
    setState(() {
    selectedButton = "notnow";
    });
    },
    child: Container(
    height: 50,
    width: double.infinity,
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: selectedButton == "notnow"
    ? Colors.green
        : Colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.black),
    ),
    child: Text(
    "Not Now",
    style: TextStyle(
    color: selectedButton == "notnow"
    ? Colors.white
        : Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    )
    )
            ],

          ),
        ),

          ),


    );
  }
}
