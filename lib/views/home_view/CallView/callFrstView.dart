
import 'package:doctorapp/views/home_view/CallView/callSecView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/constants/colors.dart';

class CallFrstView extends StatelessWidget {
  final List<Map<String, String>> recentCalls = [
    {
      'number': 'Faria',
      'time': 'July 23, 11:29 AM',
    },
    {
      'number': 'Sabiha',
      'time': 'July 22, 10:53 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('Clear call log')),
              PopupMenuItem(child: Text('Settings')),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          // Favorites
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Favorites',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.greenColor,
              child: Icon(Icons.favorite, color: Colors.white),
            ),
            title: Text('Add favorite'),
          ),

          // Recent calls
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recent',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          // Faria tile with navigation
          ListTile(
            onTap: () {
              Get.to(CallSecView());
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: Text('Faria'),
            subtitle: Text('July 23, 11:29 AM'),
            trailing: Icon(Icons.call, color: Colors.green),
          ),

          // Sabiha tile
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: Text('Sabiha'),
            subtitle: Text('July 22, 10:53 PM'),
            trailing: Icon(Icons.call, color: Colors.green),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: AppColors.greenColor,
        child: Icon(Icons.add_call, color: Colors.white),
      ),
    );
  }
}
