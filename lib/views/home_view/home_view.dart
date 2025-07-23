import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(radius: 22, backgroundImage:
                    AssetImage("assets/profile.png")),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Hi, Azeez", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("How are you today?", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.notifications, color: Colors.green),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                // Search Field
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search doctor, Pharmacy...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                // Upcoming Schedule
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming schedule", style:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("see all", style:
                    TextStyle(color:Colors.green,fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.green.shade100,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/doctor1.png")),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Dr. Rasheed Idris", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Cardiovascular"),
                          SizedBox(height: 6),
                          Text("📅 Nov 24, 9:00 AM"),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Services Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _serviceIcon(Icons.person, "Doctor"),
                    _serviceIcon(Icons.local_pharmacy, "Pharmacy"),
                    _serviceIcon(Icons.local_hospital, "Ambulance"),
                    _serviceIcon(Icons.apartment, "Hospital"),
                  ],
                ),

                const SizedBox(height: 20),

                // Top Doctors
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("See All", style: TextStyle(color: Colors.green)),
                  ],
                ),
                const SizedBox(height: 10),

                _doctorTile("Dr. Kenny Adeola", "General Practitioner", 4.5, "45 reviews"),
                _doctorTile("Dr. Taiwo", "Pediatrician", 4.8, "120 reviews"),
                _doctorTile("Dr. Johnson", "Dentist", 4.7, "98 reviews"),
                _doctorTile("Dr. Nkechi Okeil", "Surgeon", 4.9, "130 reviews"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _serviceIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green.shade50,
          child: Icon(icon, color: Colors.green),
        ),
        SizedBox(height: 6),
        Text(label),
      ],
    );
  }

  Widget _doctorTile(String name, String specialty, double rating, String reviews) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/doctor1.png")),
        title: Text(name),
        subtitle: Text(specialty),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 16),
                SizedBox(width: 4),
                Text("$rating"),
              ],
            ),
            Text("($reviews)", style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
