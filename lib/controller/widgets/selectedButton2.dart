//
//
//
// //import '../../linker/linker.dart';
//
//
// import 'package:doctorapp/controller/widgets/text_widget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SelectButton2 extends StatelessWidget {
//   int check;
//   VoidCallback ontap;
//   String text;
//   //String text1;
//   int check2;
//
//   SelectButton2({super.key,
//     required this.ontap, required this.check,
//     required this.text,
//     //required this.text1,
//     required this.check2 });
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: ontap,
//       child: Container(
//         //padding: EdgeInsets.all(10),
//         margin: EdgeInsets.only(bottom: 15,left: 15),
//         width: 90,
//         height: 50,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 width: 1.0
//             ),
//             color:   check==check2 ? Colors.green: Colors.white,
//             borderRadius: BorderRadius.circular(5)
//         ),
//         child: Row(
//           children: [
//
//             SizedBox(height: 10,),
//             TextWidget(txt: text,fntsze: 18,fntwt: FontWeight.w600,clr: check==check2 ?Colors.white:Colors.grey),
//             // SizedBox(width: 30,),
//             // TextWidget(txt:text1,fntsze: 16,fntwt: FontWeight.w400,clr:  check==check2 ?Colors.white:Colors.grey ),
//           ],
//
//         ),
//       ),
//     );
//   }
// }
//
//
