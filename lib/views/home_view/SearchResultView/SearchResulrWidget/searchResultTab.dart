
import 'package:flutter/material.dart';

import '../../../../controller/widgets/text_widget.dart';

class SearchResultTab extends StatelessWidget {
  String txt;
  String txt1;
  String txt2;
  String txt3;
  SearchResultTab({super.key,
  required this.txt,
    required this.txt1,
    required this.txt2,
    required this.txt3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          // Doctor Image with Star
          CircleAvatar(
            radius: 40,
            child: Icon(Icons.person_outline_outlined),
          ),
          SizedBox(width: 10),

          // Doctor Info Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Name
                TextWidget(
                  txt: txt,
                  clr: Colors.black,
                  fntsze: 14,
                  fntwt: FontWeight.w500,
                ),
                SizedBox(height: 4),

                // Specialization + Arrow
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      txt: txt1,
                      clr: Colors.grey,
                      fntsze: 14,
                      fntwt: FontWeight.w500,
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                SizedBox(height: 4),

                // Rating + Reviews
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.green, size: 18),
                          SizedBox(width: 4),
                          TextWidget(
                            txt: txt2,
                            clr: Colors.green,
                            fntsze: 14,
                            fntwt: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    TextWidget(
                      txt: txt3,
                      clr: Colors.grey,
                      fntsze: 14,
                      fntwt: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
