import 'package:flutter/material.dart';

class ChatFormField extends StatelessWidget {
  const ChatFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin:  EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        padding:  EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(25),
        ),
        child:
        TextFormField(
          decoration: InputDecoration(
              hintText: 'Ask Meta AI or Search,',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon:  Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none
          ),
        )

    );
  }
}
