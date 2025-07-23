
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'doctorDetailView.dart';
//import 'doctor_details_screen.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Doctors", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 🔍 Search Field
            TextField(
              decoration: InputDecoration(
                hintText: 'Search doctor, hospital...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            // 👨‍⚕️ Grid of Doctors
            Expanded(
              child: GridView.builder(
                itemCount: doctorList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final doctor = doctorList[index];

                  return GestureDetector(
                    onTap: () {
                      Get.to(DoctorDetailsView(doctor: doctor,));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //    builder: (_) => DoctorDetailsScreen(doctor: doctor),
                      //   ),
                      // );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade300, blurRadius: 6, offset: Offset(0, 2)),
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(doctor['image']),
                          ),
                          const SizedBox(height: 10),
                          Text(doctor['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(doctor['specialty'], style: TextStyle(color: Colors.grey)),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.green, size: 16),
                              const SizedBox(width: 4),
                              Text("${doctor['rating']}", style: TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Text("(${doctor['reviews']} reviews)", style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 📦 Dummy doctor data
final List<Map<String, dynamic>> doctorList = [
  {
    "name": "Dr. Taiwo",
    "specialty": "Oncologist",
    "rating": 4.6,
    "reviews": 130,
    "image": "assets/doctor1.png",
  },
  {
    "name": "Dr. Johnson",
    "specialty": "Pediatrician",
    "rating": 4.8,
    "reviews": 220,
    "image": "assets/doctor2.png",
  },
  {
    "name": "Dr. Kenny",
    "specialty": "Psychologist",
    "rating": 4.4,
    "reviews": 110,
    "image": "assets/doctor3.png",
  },
];
