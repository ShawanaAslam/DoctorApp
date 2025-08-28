

import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ClientView extends StatefulWidget {
  const ClientView({super.key});

  @override
  State<ClientView> createState() => _ClientViewState();
}

class _ClientViewState extends State<ClientView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:ListTile(
  leading: CircleAvatar(
    radius: 22,
    backgroundColor: Colors.blue,
    child: CircleAvatar(
      radius: 20,
    ),
  ),
  title: TextWidget(txt: 'Hi, Vivek Shah',clr: Colors.black,fntwt: FontWeight.w400,fntsze: 16,),
  subtitle:  TextWidget(txt: 'Meet your New Clients!',clr: Colors.black,fntwt: FontWeight.w400,fntsze: 16,),
  trailing: Row(

      children: [
  IconButton(
  icon:  Icon(Icons.notification_add_outlined, color: Colors.black),
  onPressed: () {
    // action for first icon
  },
),
      IconButton(
        icon: Icon(Icons.search, color: Colors.black),
        onPressed: () {
          // action for second icon
        },

),]
    )
)
    );
  }
}
