
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  String txt;
  VoidCallback ontp;
   ButtonWidget({super.key,
  required this.txt,required this.ontp});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: ontp,
      child: Container(
          height: 40,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.greenColor,
          ),

          child: Center(child: Text(txt,style: TextStyle(fontWeight:
          FontWeight.w600,fontSize: 18,color: Colors.white),))),
    );
  }
}
