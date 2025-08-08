
import 'package:doctorapp/views/home_view/CallView/callFrstView.dart';
import 'package:doctorapp/views/home_view/ChatView/chatOuterView.dart';
import 'package:doctorapp/views/home_view/DashBoardView/dashBoardView.dart';
import 'package:flutter/material.dart';

import '../../../controller/constants/colors.dart';
import '../profileView/profileView.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _selectedIndex = 0; // Booking tab selected by default

  final List<Widget> _screens = [
    DashBoardView(),
   ChatOuterView(),
     CallFrstView(),

    Center(child: Text('Booking Screen')),
   ProfileView()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.whiteClr,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        selectedItemColor: AppColors.greenColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          _buildNavItem(icon: Icons.home_outlined, label: 'Home', index: 0),
          _buildNavItem(icon: Icons.message_outlined, label: 'Messages', index: 1),
          _buildNavItem(icon: Icons.add_ic_call_outlined, label:'',index: 2, isCenter: true),
          _buildNavItem(icon: Icons.bookmark_add_outlined, label: 'Booking', index: 3),
          _buildNavItem(icon: Icons.person_outline_outlined, label: 'Profile', index: 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    bool isCenter = false,
  }) {
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      label: label,
      icon: isCenter
          ?
      // Container(
      //   padding: const EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //    // color: isSelected ? Colors.green : Colors.transparent,
      //    // shape: BoxShape.circle,
      //   ),
      //   child:
        Icon(
          icon,
          color: isSelected ? AppColors.greenColor : Colors.grey,size: 50,
        )
     // )
          : Icon(
        icon,
        color: isSelected ? AppColors.greenColor : Colors.grey,
      ),
    );
  }
}
