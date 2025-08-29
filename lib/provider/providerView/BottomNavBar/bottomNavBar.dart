// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart'; // Agar custom icons chahiye
//
// class CustomNavBarScreen extends StatefulWidget {
//   const CustomNavBarScreen({super.key});
//
//   @override
//   State<CustomNavBarScreen> createState() => _CustomNavBarScreenState();
// }
//
// class _CustomNavBarScreenState extends State<CustomNavBarScreen> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Selected Tab: $_currentIndex",
//           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ),
//
//       // ===== Bottom Navigation Bar =====
//       bottomNavigationBar: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               spreadRadius: 1,
//               offset: Offset(0, -2),
//             )
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             // ==== Request Button ====
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _currentIndex = 0;
//                 });
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.teal.shade100,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   children: const [
//                     Icon(Icons.add_circle, color: Colors.teal, size: 22),
//                     SizedBox(width: 5),
//                     Text(
//                       "Request",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: Colors.teal,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             // ==== Other Icons ====
//             IconButton(
//               icon: Icon(Iconsax.calendar,
//                   color: _currentIndex == 1 ? Colors.teal : Colors.grey, size: 26),
//               onPressed: () {
//                 setState(() {
//                   _currentIndex = 1;
//                 });
//               },
//             ),
//             IconButton(
//               icon: Icon(Iconsax.message,
//                   color: _currentIndex == 2 ? Colors.teal : Colors.grey, size: 26),
//               onPressed: () {
//                 setState(() {
//                   _currentIndex = 2;
//                 });
//               },
//             ),
//             IconButton(
//               icon: Icon(Iconsax.user,
//                   color: _currentIndex == 3 ? Colors.teal : Colors.grey, size: 26),
//               onPressed: () {
//                 setState(() {
//                   _currentIndex = 3;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
////////////////////
import 'package:flutter/material.dart';

class CustomNavBarScreen extends StatefulWidget {
  const CustomNavBarScreen({super.key});

  @override
  State<CustomNavBarScreen> createState() => _CustomNavBarScreenState();
}

class _CustomNavBarScreenState extends State<CustomNavBarScreen> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _navItems = [
    {"icon": Icons.question_mark, "label": "Request"},
    {"icon": Icons.calendar_month, "label": "Appointment"},
    {"icon": Icons.chat_bubble_outline, "label": "Message"},
    {"icon": Icons.person_outline, "label": "Profile"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Selected Tab: ${_navItems[_currentIndex]["label"]}",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      // ===== Bottom Navigation Bar =====
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 1,
              offset: Offset(0, -2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_navItems.length, (index) {
            final item = _navItems[index];
            final bool isSelected = _currentIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: EdgeInsets.symmetric(
                  horizontal: isSelected ? 15 : 0,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.teal.shade100 : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      item["icon"],
                      size: 24,
                      color: isSelected ? Colors.teal : Colors.grey,
                    ),
                    if (isSelected) ...[
                      const SizedBox(width: 6),
                      Text(
                        item["label"],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.teal,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
