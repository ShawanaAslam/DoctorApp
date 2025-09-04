import 'package:doctorapp/views/home_view/AppointmentView/appointmentView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/button_widget.dart';
import '../../../controller/widgets/text_widget.dart';
import '../Appointment/appointment.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,



      body: SafeArea(
        child: Column(
          children: [
            // -------- AppBar Style Header ----------
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration:BoxDecoration(
                color: Color(0xffF1FAF9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child:Center(
                child: Text(
                  "Wallet & Payouts",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

             SizedBox(height: 20),

            // ----------- Session Earning -----------
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(txt: 'Session Earning',clr:Colors.black,
                        fntwt: FontWeight.w500,
                        fntsze: 16,
                      ),
                    ],
                  ),
                 SizedBox(height: 10),
                  _earningCard(
                    title: "Your Balance",
                    amount: "Rs. 5000.59",
                    bgColor: Colors.teal,
                  ),

                  SizedBox(height: 20),

                  // ----------- Total Earning -----------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(txt: 'Total Earning',clr:Colors.black,
                        fntwt: FontWeight.w500,
                        fntsze: 16,
                      ),
                    ],
                  ),
                   SizedBox(height: 10),
                  _earningCard(
                    title: "Earning",
                    amount: "Rs. 50000",
                    bgColor: Colors.indigo.shade900,
                  ),
                ],
              ),
            ),

             SizedBox(height: 200),

            // ----------- Withdraw Button -----------
            ButtonWidget(txt: 'Request Withdraw', ontp: () {
              Get.to(()=>Appointment());
            },)
          ],
        ),
      ),
    );
  }

  // ---------- Reusable Earning Card ----------
  Widget _earningCard(
      {required String title,
        required String amount,
        required Color bgColor}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          // Amount Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
              const SizedBox(height: 4),
              Text(amount,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ],
          ),

        ],
      ),
    );
  }
}
