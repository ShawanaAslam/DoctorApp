// import 'package:doctorapp/controller/widgets/text_widget.dart';
// import 'package:flutter/material.dart';
//
// class History extends StatelessWidget {
//   const History({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
//         title: TextWidget(txt: 'History',clr: Colors.black,),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//
//
//             SizedBox(height: 20),
//
//             // History List
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       historySection("Last Week"),
//                       const SizedBox(height: 10),
//                       historyList(),
//                       const SizedBox(height: 20),
//                       historySection("Last Month"),
//                       const SizedBox(height: 10),
//                       historyList(),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget historySection(String title) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style:  TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Text(
//           'SEE ALL',
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.teal,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget historyList() {
//     return Column(
//       children: List.generate(
//         3,
//             (index) => Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8),
//           child: Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: const Color(0xFFF8F8F8),
//               borderRadius: BorderRadius.circular(16),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade200,
//                   blurRadius: 4,
//                   offset: const Offset(2, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 // Profile Image
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.asset(
//                     "https://i.pravatar.cc/150?img=3", // Replace with your asset
//                     width: 60,
//                     height: 60,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 // Name and Details
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Aakash Sharma',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     const Text(
//                       'Marriage Issues',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Row(
//                       children: List.generate(
//                         4,
//                             (star) => const Icon(Icons.star, color: Colors.amber, size: 18),
//                       )..add(
//                         const Icon(Icons.star_border, color: Colors.amber, size: 18),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

////////////////////////
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:doctorapp/provider/providerView/walletView/walletView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/text_widget.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: TextWidget(txt: 'History',clr: Colors.black,),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // // ----------- AppBar ------------
            // Container(
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //   decoration: const BoxDecoration(
            //     color: Color(0xffF1FAF9),
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(30),
            //       bottomRight: Radius.circular(30),
            //     ),
            //   ),
            //   child: Row(
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.arrow_back, color: Colors.black),
            //       ),
            //       const Expanded(
            //         child: Text(
            //           "History",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(
            //               fontSize: 18,
            //               fontWeight: FontWeight.w600,
            //               color: Colors.black),
            //         ),
            //       ),
            //       const SizedBox(width: 48), // to balance back button space
            //     ],
            //   ),
            // ),

            const SizedBox(height: 16),

            // ----------- Content Scroll ------------
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Last Week Section
                    _buildSectionTitle("Last Week"),
                    const SizedBox(height: 10),
                    _buildHistoryCard(),
                    const SizedBox(height: 10),
                    _buildHistoryCard(),
                    const SizedBox(height: 10),
                    _buildHistoryCard(),

                    const SizedBox(height: 20),

                    // Last Month Section
                    _buildSectionTitle("Last Month"),
                    const SizedBox(height: 10),
                    _buildHistoryCard(),
                    const SizedBox(height: 10),
                    _buildHistoryCard(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ---------- Section Header (Title + See All) ----------
  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
          TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
         InkWell(
           onTap: (){
             Get.to(()=>WalletView());
           },
           child: Text(
            "SEE ALL",
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600, color: Colors.teal),
                   ),
         ),
      ],
    );
  }

  // ---------- History Card ----------
  Widget _buildHistoryCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              //border: Border.all(color: AppColors.greenColor),
            borderRadius: BorderRadius.circular(30),

          ),
            child: Image.network(
              "https://randomuser.me/api/portraits/men/32.jpg",
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
    ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Aakash Sharma",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const Text(
                "Marriage Issues",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < 4 ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 18,
                  );
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
