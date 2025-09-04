
import 'package:doctorapp/provider/providerView/clientView/clientView.dart';
import 'package:doctorapp/provider/providerView/profile/profile.dart';
import 'package:doctorapp/provider/providerView/walletView/walletView.dart';
//import 'package:doctorapp/views/home_view/AppointmentView/appointmentView.dart';
import 'package:flutter/material.dart';

import '../Appointment/appointment.dart';

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
    {"icon": Icons.account_balance_wallet_outlined, "label": "Payout"},
    //{"icon": Icons.chat_bubble_outline, "label": "Message"},
    {"icon": Icons.person_outline, "label": "Profile"},
  ];

  // ===== Screens list =====
  final List<Widget> _screens = const [
    ClientView(),
    //Appointment(),
    Appointment(),
    WalletView(),
   // Profile(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Screen will change here

      // ===== Custom Bottom Navigation Bar =====
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
                  color: isSelected ? Colors.teal : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(
                      item["icon"],
                      size: 24,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                    if (isSelected) ...[
                      const SizedBox(width: 6),
                      Text(
                        item["label"],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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
