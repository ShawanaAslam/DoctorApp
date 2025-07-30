import 'package:flutter/material.dart';

class FingerprintWidget extends StatelessWidget {
  final VoidCallback? onTap;

   FingerprintWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap ?? () {
          // default action
          print("Fingerprint tapped");
        },
        child: Icon(
          Icons.fingerprint,
          size: 55,
          color: Color(0xFF00DB8B), // same green from design
        ),
      ),
    );
  }
}
