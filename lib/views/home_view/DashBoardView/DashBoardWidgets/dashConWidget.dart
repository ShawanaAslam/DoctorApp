
import 'package:doctorapp/controller/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../controller/constants/images.dart';

class DashConWidget extends StatefulWidget {
  const DashConWidget({super.key});

  @override
  State<DashConWidget> createState() => _DashConWidgetState();
}

class _DashConWidgetState extends State<DashConWidget> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.greenColor, // Green background
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            // Left Column: Text and Time
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Dr.Rasheed Idris',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.insert_chart_outlined,color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Cardiovascular',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Icon(Icons.access_time, size: 18, color: Colors.black87),
                          SizedBox(width: 8),
                          Text(
                            'Nov 24, 9:00am',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Right Image
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  AppImages.man, // 🟢 Update with your image path
                  fit: BoxFit.cover,
                  height: 140,
                ),
              ),
            ),




          ],
        ),
      ),
    );

  }
  }

