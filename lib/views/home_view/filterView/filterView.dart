


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/selectedButton.dart';
import '../../../controller/widgets/text_widget.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  @override
  String selectedLanguage = 'English';

  final List<String> languages = [
    'English',
    'English and Yoruba',
    'English and Hausa',
    'English and Igbo',
    'English and Fulfulde',
    'English and Kanuri',
  ];


  String selectedValue = '4.5 and above';

  final List<Map<String, dynamic>> ratingOptions = [
    {'stars': 0, 'label': 'Nil'},
    {'stars': 5, 'label': '4.5 and above'},
    {'stars': 5, 'label': '4.0 - 4.5'},
    {'stars': 5, 'label': '3.5 - 4.0'},
    {'stars': 5, 'label': '3.0 - 3.5'},
    {'stars': 5, 'label': '2.5 - 3.0'},
  ];
  int check = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(txt: 'Search Filter',clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                TextWidget(txt: 'Speciality',
                clr: Colors.black,fntwt: FontWeight.w500,)
              ],
            ),
            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SelectButton(
                    ontap: () {
                      check = 1;
                      setState(() {});
                    },
                    hgt: 60,
                    wdt: 60,
                    check: check,
                    check2: 1,
                    text: 'All',
                  ),
                  SelectButton(
                    ontap: () {
                      check = 2;
                      setState(() {});
                    },
                    hgt: 60,
                    wdt: 100,
                    check: check,
                    check2: 2,
                    text: 'General',
                  ),
                  SelectButton(
                    ontap: () {
                      check = 3;
                      setState(() {});
                    },
                    hgt: 60,
                    wdt: 100,
                    check: check,
                    check2: 3,
                    text: 'Services',
                  ),
                  SelectButton(
                    ontap: () {
                      check = 4;
                      setState(() {});
                    },
                    hgt: 60,
                    wdt: 100,
                    check: check,
                    check2: 4,
                    text: 'Services',
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                TextWidget(txt: 'Reviews',
                  clr: Colors.black,fntwt: FontWeight.w500,)
              ],
            ),

    Column(
    children: ratingOptions.map((option) {
    return
      //Padding(
   // padding: const EdgeInsets.symmetric(vertical: 6.0),
    //child:
      Row(
    children: [
    // Star icons
    Row(
    children: List.generate(5, (index) {
    if (option['stars'] == 0) {
    return Icon(Icons.star, color: Colors.grey.shade300, size: 20);
    } else {
    return Icon(Icons.star, color: Colors.orange, size: 20);
    }
    }),
    ),
    SizedBox(width: 12),

    // Label Text
    Expanded(
    child: Text(
    option['label'],
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
    ),

    // Radio Button
    Radio<String>(
    value: option['label'],
    groupValue: selectedValue,
    activeColor: Colors.green,
    onChanged: (value) {
    setState(() {
    selectedValue = value!;
    });
    },
    ),
    ],
   // ),
    );
    }).toList(),
    ),
SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                TextWidget(txt: 'Language and Communication',
                  clr: Colors.black,fntwt: FontWeight.w500,)
              ],
            ),
            SizedBox(height: 10,),
            
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedLanguage,
                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  isExpanded: true,
                  dropdownColor: Colors.white,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLanguage = newValue!;
                    });
                  },
                  items: languages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: selectedLanguage == value ? Colors.green : Colors.black,
                          fontWeight: selectedLanguage == value ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
          )])
        ),

    );
  }
}
