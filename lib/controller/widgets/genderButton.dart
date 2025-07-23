
import 'package:flutter/material.dart';

class GenderButton extends StatefulWidget {
  String txt;
  String txt1;
  GenderButton({super.key,required this.txt,required this.txt1});

  @override
  State<GenderButton> createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  String selectedGender = '';
  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        SizedBox(width:10),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedGender = 'Male';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: selectedGender == 'Male' ? Colors.green : Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Male',
                  style: TextStyle(
                    color: selectedGender == 'Male' ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedGender = 'Female';
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: selectedGender == 'Female' ? Colors.green : Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Female',
                  style: TextStyle(
                    color: selectedGender == 'Female' ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
