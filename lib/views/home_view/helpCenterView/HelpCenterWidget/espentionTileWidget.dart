//
//
// import 'package:flutter/material.dart';
//
// class ExpansionTileWidget extends StatefulWidget {
//   String txt;
//   String txt1;
//   String txt2;
//
//    ExpansionTileWidget({super.key,
//    required this.txt,
//      required this.txt1,
//      required this.txt2
//    });
//
//   @override
//   State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
// }
//
// class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
//   bool  isOpen=false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey, ),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Theme(
//         data: Theme.of(context).copyWith(
//           dividerColor: Colors.transparent, // to remove default divider
//         ),
//         child: ExpansionTile(
//           title: Text(widget.txt,style: TextStyle(fontSize: 14),),
//           onExpansionChanged: (value) {
//             setState(() {
//               isOpen = value;
//             });
//           },
//           trailing: isOpen
//               ? Icon(Icons.keyboard_arrow_up)
//               : Icon(Icons.keyboard_arrow_down_outlined),
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(widget.txt1),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(widget.txt2),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  final String txt;
  final String txt1;
  final String txt2;
  final IconData? leadingIcon; // optional icon

  const ExpansionTileWidget({
    super.key,
    required this.txt,
    required this.txt1,
    required this.txt2,
    this.leadingIcon, // default null
  });

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          leading: widget.leadingIcon != null
              ? Icon(widget.leadingIcon, color: Colors.green)
              : null,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.txt,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),

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
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(widget.txt1),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Text(widget.txt2),
            ),
          ],
        ),
      ),
    );
  }
}
