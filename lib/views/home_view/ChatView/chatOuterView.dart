//
//
// import 'package:doctorapp/views/home_view/ChatView/chatView.dart';
// import 'package:doctorapp/views/home_view/ChatView/chatViewWidget/chatFormField.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../controller/constants/colors.dart';
// import '../../../controller/widgets/text_widget.dart';
// import 'chatViewWidget/chatCardWidget.dart';
//
// class ChatOuterView extends StatelessWidget {
//   const ChatOuterView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: TextWidget(txt:
//           'Message',
//
//               clr: AppColors.greenColor,
//               fntwt: FontWeight.bold,
//               fntsze: 22),
//
//         actions: [
//           Icon(Icons.camera_alt, color: Colors.grey),
//           SizedBox(width: 16),
//           Icon(Icons.search, color: Colors.grey),
//           SizedBox(width: 16),
//           Icon(Icons.more_vert, color: Colors.grey),
//           SizedBox(width: 8),
//         ],),
//
//       body: Column(
//         children: [
//
// ChatFormField(),
//
//           // Chat List
//           Expanded(
//             child: ListView(
//               children: [
//                 ChatTileWidget(
//                   ontap: (){
//                     Get.to(()=>ChatView());
//                   },
//                   name: "+92 334 6985327",
//                   message: "📸 3 photos",
//                   date: "7/25/25",
//                   isVerified: true,
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "Meta AI",
//                   message: "There are several ways to save a doc...",
//                   date: "7/25/25",
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "+92 334 6985327",
//                   message: "📸 3 photos",
//                   date: "7/25/25",
//                   isVerified: true,
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "Meta AI",
//                   message: "There are several ways to save a doc...",
//                   date: "7/25/25",
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "+92 334 6985327",
//                   message: "📸 3 photos",
//                   date: "7/25/25",
//                   isVerified: true,
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "Meta AI",
//                   message: "There are several ways to save a doc...",
//                   date: "7/25/25",
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "+92 334 6985327",
//                   message: "📸 3 photos",
//                   date: "7/25/25",
//                   isVerified: true,
//                 ),
//                 ChatTileWidget(
//                   ontap: (){},
//                   name: "Meta AI",
//                   message: "There are several ways to save a doc...",
//                   date: "7/25/25",
//                 ),
//
//               ],
//             ),
//           ),
//         ],
//       ),
//
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green[800],
//         onPressed: () {},
//         child: const Icon(Icons.chat, color: Colors.white),
//       ),
//
//       // bottomNavigationBar: BottomNavigationBar(
//       //   currentIndex: 0,
//       //   selectedItemColor: Colors.green[800],
//       //   unselectedItemColor: Colors.grey,
//       //   showUnselectedLabels: true,
//       //   items: const [
//       //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
//       //     BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
//       //     BottomNavigationBarItem(
//       //         icon: Icon(Icons.groups), label: 'Communities'),
//       //     BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
//       //   ],
//       // ),
//     );
//   }
// }
//
//
//
//
//
//
//
// ChatOuterView.dart
import 'package:doctorapp/views/home_view/ChatView/chatView.dart';
import 'package:doctorapp/views/home_view/ChatView/chatViewWidget/chatFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/constants/colors.dart';
import '../../../controller/widgets/text_widget.dart';
import 'chatViewWidget/chatCardWidget.dart';

class ChatOuterView extends StatelessWidget {
  const ChatOuterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: TextWidget(
            txt: 'Message',
            clr: AppColors.greenColor,
            fntwt: FontWeight.bold,
            fntsze: 22),
        actions: [
          Icon(Icons.camera_alt, color: Colors.grey),
          SizedBox(width: 16),
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 16),
          Icon(Icons.more_vert, color: Colors.grey),
          SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          ChatFormField(),

          /// Chat List
          Expanded(
            child: ListView(
              children: [
                ChatCardWidget(
                  name: "+92 334 6985327",
                  message: "📸 3 photos",
                  date: "7/25/25",
                  isVerified: true,
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "+92 334 6985327",
                      message: "📸 3 photos",
                    ));
                  },
                ),
                ChatCardWidget(
                  name: "Meta AI",
                  message: "There are several ways to save a doc...",
                  date: "7/25/25",
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "Meta AI",
                      message: "There are several ways to save a doc...",
                    ));
                  },
                ),
                ChatCardWidget(
                  name: "+92 334 6985327",
                  message: "📸 3 photos",
                  date: "7/25/25",
                  isVerified: true,
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "+92 334 6985327",
                      message: "📸 3 photos",
                    ));
                  },
                ),
                ChatCardWidget(
                  name: "Meta AI",
                  message: "There are several ways to save a doc...",
                  date: "7/25/25",
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "Meta AI",
                      message: "There are several ways to save a doc...",
                    ));
                  },
                ),
                ChatCardWidget(
                  name: "+92 334 6985327",
                  message: "📸 3 photos",
                  date: "7/25/25",
                  isVerified: true,
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "+92 334 6985327",
                      message: "📸 3 photos",
                    ));
                  },
                ),
                ChatCardWidget(
                  name: "Meta AI",
                  message: "There are several ways to save a doc...",
                  date: "7/25/25",
                  ontap: () {
                    Get.to(() => ChatView(
                      userName: "Meta AI",
                      message: "There are several ways to save a doc...",
                    ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[800],
        onPressed: () {},
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}
