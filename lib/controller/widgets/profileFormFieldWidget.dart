
import 'package:flutter/material.dart';

class ProfileFormfieldwidget extends StatelessWidget {
  String txt;
  String? txt1;
 // String? txt2;
  IconData? icn;
//VoidCallback ontp;
  IconData? icn1;
   ProfileFormfieldwidget({super.key,
  required this.txt,
     this.txt1,
  //required this.ontp,
     //this.txt2
     this.icn,
     this.icn1
  });

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
       // suffix: Text(''),
          filled: true,
          fillColor: Colors.white,
        prefixIcon: icn1 != null ? Icon(icn1, color: Colors.green) : null,
        suffixIcon:  icn != null ? Icon(icn, color: Colors.green) : null,
        hintText: txt,
        // ← your hint text here
       // hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5), // rounded corners
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey), // normal border
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.green, width: 2), // on focus
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    suffix: InkWell(
      onTap: (){},
      child: Text(
      txt1??'',
      style: TextStyle(
     color: Colors.green,
      //  color: _focusNode.hasFocus ? Colors.green : Colors.green,
      //fontWeight: FontWeight.bold,
      ),
        ),
    ),

    ));
  }
}
