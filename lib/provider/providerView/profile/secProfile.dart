import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:doctorapp/provider/providerView/profile/profileWidget/profileCard.dart';
import 'package:flutter/material.dart';

class SecProfile extends StatefulWidget {
  const SecProfile({super.key});

  @override
  State<SecProfile> createState() => _SecProfileState();
}

class _SecProfileState extends State<SecProfile> {
  int selectedIndex = 4; // Profile tab selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
          icon:
          Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: TextWidget(
         txt:  "Profile",
         clr: Colors.black,
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),

            ProfileCard(txt:  "Hi, Vivek Shah",txt1: "Vivek834@gmail.com",

              image:"https://i.pravatar.cc/150?img=3" ,),

            buildMenuItem("Edit Personal Profile", Icons.arrow_forward_ios),
            buildMenuItem("My Appointments", Icons.arrow_forward_ios),
            buildMenuItem("Wallet & Payments", Icons.arrow_forward_ios),
            buildMenuItem("Write a review", Icons.edit_outlined),
            buildMenuItem("Change Password", Icons.arrow_forward_ios),
            buildMenuItem("FAQs & Support", Icons.arrow_forward_ios),
            buildMenuItem("Language", Icons.arrow_forward_ios),
            buildMenuItem("Logout", Icons.arrow_forward_ios),
          ],
        ),
      ),


    );
  }

  Widget buildMenuItem(String title, IconData icn) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 10, ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
         // Icon(icn, color: Colors.black54, size: 18),
          IconButton(onPressed: (){}, icon:Icon(icn, color: Colors.black54, size: 18), )
        ],
      ),
    );
  }
}
