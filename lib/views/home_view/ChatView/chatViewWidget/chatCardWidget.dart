
import 'package:flutter/material.dart';

class ChatCardWidget extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final bool isVerified;
  final VoidCallback ontap;

  const ChatCardWidget({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.ontap,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: const CircleAvatar(radius: 24, backgroundColor: Colors.grey),
      title: Row(
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          if (isVerified) const SizedBox(width: 4),
          if (isVerified)
            const Icon(Icons.verified, color: Colors.blue, size: 16),
        ],
      ),
      subtitle: Text(message),
      trailing: Text(date),
    );
  }
}
