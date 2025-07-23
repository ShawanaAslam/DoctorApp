
import 'package:flutter/material.dart';

class HelpCenterField extends StatelessWidget {


   HelpCenterField({super.key,

   });

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey
          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: TextFormField(

              decoration:InputDecoration(
                border: InputBorder.none,
                hintText: 'How can I Schedule an Appointment?',
                suffixIcon: Icon(Icons.keyboard_arrow_up,
                  color: Colors.green,size: 28,),

              ) ,
            ),
          ),
          Divider(
            indent: 20,      // Start se 50 pixels ka space
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              child: Text( 'Schedule an appointment on a\n'
                  'telemedicne app typically involves a user-\n'
                  'friendly and intuitive process',
                style: TextStyle(fontSize: 16),),
            ),

          ),
        ],
      ),
    );
  }
}
