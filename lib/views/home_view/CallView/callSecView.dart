
import 'package:doctorapp/views/home_view/CallView/callView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/constants/images.dart';

class CallSecView extends StatefulWidget {
  final bool isLive;

  const CallSecView({super.key, this.isLive = false});

  @override
  State<CallSecView> createState() => _CallSecViewState();
}

class _CallSecViewState extends State<CallSecView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: (){
      //     Get.back();
      //   }, icon: Icon(Icons.arrow_back)),
      // ),
      body: Stack(
        children: [
          // Doctor Video Background
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.man), // your background doctor image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay gradient for visibility
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.2),
          ),

          // Back button and patient video
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 700),
                    child: IconButton(onPressed: () {
                      Get.back();
                    }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
                  ),

                  // Top-right patient video and status
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(AppImages.man),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: widget.isLive ? Colors.red : Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          widget.isLive ? 'Live' : 'Calling...',
                          style: const TextStyle(color: Colors.white,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // Doctor Info (Bottom Center)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 140),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Dr. Kenny    ·    21:16 min',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Action buttons (mic, end call, speaker, etc.)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  actionButton(Icons.mic, Colors.green),
                  actionButton(Icons.videocam, Colors.white),
                  actionButton(Icons.call_end, Colors.red,onTap:(){
                    Get.to(()=>CallView());
                  } ),
                  actionButton(Icons.volume_up, Colors.white),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget actionButton(IconData icon, Color color, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: color == Colors.white ? Colors.black : Colors.white,
          size: 28,
        ),
      ),
    );
  }
}

