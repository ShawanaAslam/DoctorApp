import 'package:flutter/material.dart';
class SelectedConwidget extends StatefulWidget {
  String txt;
  SelectedConwidget({super.key,required this.txt
  });

  @override
  State<SelectedConwidget> createState() => _SelectedConwidgetState();
}

class _SelectedConwidgetState extends State<SelectedConwidget> {
  @override
  bool isLoginSelected = true;

  Widget build(BuildContext context) {
    return    InkWell(
      onTap: () {
        setState(() {
          isLoginSelected = true;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        decoration: BoxDecoration(
          color: isLoginSelected ? Colors.green : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
         'login' ,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
