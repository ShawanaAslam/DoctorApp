import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  final Map<String, dynamic> doctor;

  const DoctorDetailsView({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Dr. Taiwo Abdulsalam",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            // Doctor image
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(doctor['image']),
            ),
            const SizedBox(height: 10),
            Text(
              doctor['name'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              doctor['specialty'],
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Info cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InfoCard(
                  icon: Icons.groups_3_outlined,
                  label: "1000+",
                  subLabel: "Patients",
                ),
                InfoCard(
                  icon: Icons.access_time_filled_rounded,
                  label: "10 Yrs",
                  subLabel: "Experience",
                ),
                InfoCard(
                  icon: Icons.star_border,
                  label: "4.5",
                  subLabel: "Ratings",
                ),
              ],
            ),

            const SizedBox(height: 24),

            buildSectionTitle("About Doctor"),
            const SizedBox(height: 8),
            const Text(
              "Dr. Bellamy Nicholas is a top specialist at London Bridge Hospital in London. He has years of experience and is recognized for his contribution and service. Available for consultation.",
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),

            const SizedBox(height: 20),
            buildSectionTitle("Working time"),
            const SizedBox(height: 6),
            const Text(
              "Mon - Sat (08:30 AM - 09:00 PM)",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),
            buildSectionTitle("Communication"),
            const SizedBox(height: 16),

            // Communication Options
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CommunicationBox(
                  icon: Icons.chat_outlined,
                  label: "Messaging",
                  bgColor: Color(0xFFFEE9F1),
                ),
                CommunicationBox(
                  icon: Icons.call_outlined,
                  label: "Audio Call",
                  bgColor: Color(0xFFE6F3FF),
                ),
                CommunicationBox(
                  icon: Icons.videocam_outlined,
                  label: "Video Call",
                  bgColor: Color(0xFFFFF3E6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subLabel;

  const InfoCard({
    super.key,
    required this.icon,
    required this.label,
    required this.subLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 6, offset: const Offset(0, 3))
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.green, size: 24),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subLabel, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}

class CommunicationBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color bgColor;

  const CommunicationBox({
    super.key,
    required this.icon,
    required this.label,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Icon(icon, color: Colors.black87),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}
