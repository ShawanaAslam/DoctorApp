import 'package:flutter/material.dart';

class WalletPayoutScreen extends StatelessWidget {
  const WalletPayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ---------- Bottom Navigation ----------
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Payout tab active
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Payouts'),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            // -------- AppBar Style Header ----------
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                color: Color(0xffF1FAF9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Center(
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

            const SizedBox(height: 20),

            // ----------- Session Earning -----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Session Earning",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15)),
                  const SizedBox(height: 10),
                  _earningCard(
                    title: "Your Balance",
                    amount: "Rs. 5000.59",
                    bgColor: Colors.teal,
                  ),

                  const SizedBox(height: 20),

                  // ----------- Total Earning -----------
                  const Text("Total Earning",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15)),
                  const SizedBox(height: 10),
                  _earningCard(
                    title: "Earning",
                    amount: "Rs. 50000",
                    bgColor: Colors.indigo.shade900,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ----------- Withdraw Button -----------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Request Withdraw",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
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
          // Decorative White Shape (top right)
          Positioned(
            right: -5,
            top: -5,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
