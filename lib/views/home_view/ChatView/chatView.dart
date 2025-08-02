//
// import 'package:doctorapp/controller/widgets/chatRow.dart';
// import 'package:doctorapp/controller/widgets/text_widget.dart';
// import 'package:flutter/material.dart';
//
// class ChatView extends StatefulWidget {
//   const ChatView({super.key});
//
//   @override
//   State<ChatView> createState() => _ChatViewState();
// }
//
// class _ChatViewState extends State<ChatView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         leading: IconButton(onPressed: (){},
//             icon: Icon(Icons.arrow_back)),
//         title: Row(
//           children: [
//             CircleAvatar(
//             child: Icon(Icons.person),
//             ),
//             SizedBox(width: 10,),
//             TextWidget(txt: 'Dr.Kenny Adeola',
//               clr: Colors.black,fntwt: FontWeight.w500,)
//           ],
//         ),
//        centerTitle: false,
//         actions: [
//
//           IconButton(onPressed: (){},
//               icon: Icon(Icons.call_outlined)),
//           IconButton(onPressed: (){},
//               icon: Icon(Icons.video_call_outlined,size: 30,)),
//
//         ],
//
//       ),
// body: SingleChildScrollView(
//   child: Column(
//     children: [
//       SizedBox(height: 10,),
//
// ChatRow(timetxt: "10:13",
//     left: 10,rgt: 10,botmlft: 10,botmrgt:0 ,
//     hgt: 80, wdt: 250, clr: Colors.green.shade300,
//     txtclr: Colors.white,
//     txt: 'hello Doctor, .......................\n'
//       '...........................\n', aligmnt:MainAxisAlignment.end,
//     aligmnt1:MainAxisAlignment.end
// ),
//
//
//       SizedBox(height: 10,),
//       ChatRow(timetxt: "10:13",left: 10,rgt: 10,botmlft: 0,botmrgt:10 ,
//           hgt: 80, wdt: 250, clr: Colors.grey.shade200,
//           txtclr: Colors.black,
//           txt: 'hello Doctor, .......................\n'
//               '...........................\n',
//           aligmnt:MainAxisAlignment.start,
//           aligmnt1:MainAxisAlignment.start),
//
//       SizedBox(height: 10,),
//
//       ChatRow(timetxt: "10:13",
//           left: 10,rgt: 10,botmlft: 10,botmrgt:0 ,
//           hgt: 80, wdt: 110, clr: Colors.green.shade300,
//           txtclr: Colors.white,
//           txt: 'hello Doctor,\n'
//               '............\n'
//               '............', aligmnt:MainAxisAlignment.end,
//           aligmnt1:MainAxisAlignment.end
//       ),
//
//       SizedBox(height: 10,),
//       ChatRow(timetxt: "10:13",left: 10,rgt: 10,botmlft: 0,botmrgt:10 ,
//           hgt: 80, wdt: 150, clr: Colors.grey.shade200,
//           txtclr: Colors.black,
//           txt: 'hello Doctor, ........\n'
//               '..\n',
//           aligmnt:MainAxisAlignment.start,
//           aligmnt1:MainAxisAlignment.start),
//
//       SizedBox(height: 10,),
//
//       ChatRow(timetxt: "10:13",
//           left: 10,rgt: 10,botmlft: 10,botmrgt:0 ,
//           hgt: 40, wdt: 80, clr: Colors.green.shade300,
//           txtclr: Colors.white,
//           txt: 'oh no'
//              , aligmnt:MainAxisAlignment.end,
//           aligmnt1:MainAxisAlignment.end
//       ),
//       SizedBox(height: 10,),
//   Container(
//
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//     margin: const EdgeInsets.only(right: 95),
//     //symmetric(vertical: 6, horizontal: 16),
//     decoration: BoxDecoration(
//       color: Colors.grey.shade300, // green background like chat bubble
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.volume_up, color: Colors.green),
//         const SizedBox(width: 8),
//
//         Container(
//           width: 140,
//           height: 4,
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(2),
//           ),
//           child: LinearProgressIndicator(
//             value: 0.6, // just a static value for now
//             valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
//             backgroundColor: Colors.white
//
//           ),
//         ),
//         SizedBox(width: 8),
//         Text(
//           '3:45',
//           style: TextStyle(color: Colors.green, fontSize: 12),
//         ),
//       ],
//     ),
//   ),
//
//       // textFormFied Area
//       SizedBox(height: 10),
//     Container(
//     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//     decoration: BoxDecoration(
//     color: Colors.white,
//     border: Border(
//     top: BorderSide(color: Colors.grey.shade300),
//     ),
//     ),
//     child: Row(
//     children: [
//     Icon(Icons.attach_file, ),
// SizedBox(width: 8),
//     // 📝 Text Field
//     Expanded(
//     child: Container(
//     padding: const EdgeInsets.symmetric(horizontal: 12),
//     decoration: BoxDecoration(
//     color: Colors.grey[100],
//     borderRadius: BorderRadius.circular(20),
//     border: Border.all(color: Colors.grey.shade300),
//     ),
//     child: TextFormField(
//     decoration: const InputDecoration(
//     hintText: "Write a message...",
//     border: InputBorder.none,
//     ),
//     ),
//     ),
//     ),
//       SizedBox(width: 8),
//     Icon(Icons.mic, ),
//     ],
//     ),
//     )
//
//
//
//     ]
//
//     ,
//   ),
// ),
//     );
//   }
// }
/////////////////////////////////


import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
final String userName;
final String message;

const ChatView({
super.key,
required this.userName,
required this.message,
});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(userName),
backgroundColor: Colors.green,
),
body: Center(
child: Text("Last message: $message"),
),
);
}
}