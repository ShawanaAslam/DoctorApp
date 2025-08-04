

import 'package:flutter/material.dart';

class PaymentFieldWidget extends StatelessWidget {
  final String txt; // hint text
  final String? txt1; // suffix text
  final IconData? icn;
  final VoidCallback? onTap;

  const PaymentFieldWidget({
    super.key,
    required this.txt,
    this.txt1,
    this.icn,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: txt,
            prefixIcon: icn != null ? Icon(icn, color: Colors.green) : null,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.green, width: 2),
            ),
          ),
        ),
        // Suffix clickable text
        if (txt1 != null && txt1!.isNotEmpty)
          Positioned(
            right: 12,
            top: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: onTap ?? () {},
              child: Center(
                child: Text(
                  txt1!,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
