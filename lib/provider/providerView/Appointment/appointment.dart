import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../clientView/clientView.dart';

class Appointment extends StatefulWidget {

  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();

  static Widget _timerBox(String text) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style:
       TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _AppointmentState extends State<Appointment> {
  String selectedButton = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextWidget(txt:
          "Appointment",
            clr: Colors.black,
            fntsze: 18,
            fntwt: FontWeight.w600,
          ),
        ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            // Profile + Name + Issue + Description
            Container(
              padding:  EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // Profile Image

                     Container(
                      decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(30),

                    ),
                      child: Image.network(
                        "https://i.pravatar.cc/150?img=5",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),

                   SizedBox(height: 10),
                   TextWidget(txt:
                    "Aakash Sharma",

                        fntsze: 18,
                        fntwt: FontWeight.bold,
                        clr: Colors.blueAccent),

                  SizedBox(height: 5),
                   Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(txt:
                      "Marriage Issues",
                        clr: Colors.black87,
                          fntsze: 14, fntwt: FontWeight.w600),
                    ),

                   SizedBox(height: 5),
                   Text(
                    "My name is Aakash Sharma. I’ve been facing constant mental and emotional torture from my wife. Despite my efforts to maintain peace, she continues to insult and manipulate me, making my life unbearable. I’m mentally exhausted and feel helpless, with no option left but to speak up and seek help.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13, color: Colors.black87),
                  ),
                  SizedBox(height: 20),

                  // Timer Box
                  Container(
                    padding:  EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2))
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Session Started",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Appointment._timerBox("02 Days"),
                            Appointment._timerBox("23 hr"),
                            Appointment._timerBox("55 Min"),
                            Appointment._timerBox("20 Sec"),
                          ],
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Buttons
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>ClientsView());
                      setState(() {
                        selectedButton ='message';
                      });
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedButton == "message" ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        "Message",
                        style: TextStyle(
                          color: selectedButton == "message"
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),


                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedButton = "notnow";
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: selectedButton == "notnow"
                              ? Colors.green
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          "Audio Call",
                          style: TextStyle(
                            color: selectedButton == "notnow"
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  )
                ],
              ),
            ),



          ],
        ),
      ),

    );
  }
}
