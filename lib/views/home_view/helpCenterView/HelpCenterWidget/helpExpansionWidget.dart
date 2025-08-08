//
// import 'package:flutter/material.dart';
//
// class HelpExpansionWidget extends StatefulWidget {
//   String txt;
//   String txt1;
//
//    HelpExpansionWidget({super.key,
// required this.txt,
//      required this.txt1
//    });
//
//   @override
//   State<HelpExpansionWidget> createState() => _HelpExpansionWidgetState();
// }
//
// class _HelpExpansionWidgetState extends State<HelpExpansionWidget> {
// bool isOpen=false;
//
//   @override
//   Widget build(BuildContext context) {
//     return   Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(color: Colors.grey.shade500, width: 1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Theme(
//         data: Theme.of(context).copyWith(
//           dividerColor: Colors.transparent,
//         ),
//         child: ExpansionTile(
//           tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
//           title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 widget.txt,
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 14,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Divider(color: Colors.grey.shade300),
//             ],
//           ),
//           trailing: Icon(
//             isOpen
//                 ? Icons.keyboard_arrow_up
//                 : Icons.keyboard_arrow_down_outlined,
//             color: Colors.green,
//           ),
//           onExpansionChanged: (value) {
//             setState(() {
//               isOpen = value;
//             });
//           },
//           children: [
//             Text(
//              widget.txt1,
//               style: TextStyle(fontSize: 14, color: Colors.black87),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class HelpExpansionWidget extends StatefulWidget {
  final String txt;
  final String txt1;
  final IconData? titleIcon;     // Optional icon before title
  final IconData? contentIcon;   // Optional icon before content

  const HelpExpansionWidget({
    super.key,
    required this.txt,
    required this.txt1,
    this.titleIcon,
    this.contentIcon,
  });

  @override
  State<HelpExpansionWidget> createState() => _HelpExpansionWidgetState();
}

class _HelpExpansionWidgetState extends State<HelpExpansionWidget> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade500, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (widget.titleIcon != null)
                    Icon(widget.titleIcon, color: Colors.green),
                  if (widget.titleIcon != null) SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.txt,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Divider(color: Colors.grey.shade300),
            ],
          ),
          trailing: Icon(
            isOpen
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down_outlined,
            color: Colors.green,
          ),
          onExpansionChanged: (value) {
            setState(() {
              isOpen = value;
            });
          },
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.contentIcon != null)
                  Icon(widget.contentIcon, color: Colors.green),
                if (widget.contentIcon != null) SizedBox(width: 8,),
                Expanded(
                  child: Text(
                    widget.txt1,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
