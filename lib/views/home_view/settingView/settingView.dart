
import 'package:flutter/material.dart';

import '../../../controller/widgets/profileRow.dart';
import '../../../controller/widgets/text_widget.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          txt: 'Help Center',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
body:
      Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: Column(
          children: [
            SizedBox(height: 10,),
            ProfileRow(ontp: () { },txt: 'Notificatoin Settings', icn: Icons.notification_important_outlined),
            Divider(),
            ProfileRow(ontp: () { },txt: 'Password Manager', icn: Icons.key),
            Divider(),
            ProfileRow(ontp: () { },txt: 'Delete Account', icn: Icons.lock_outline),
            Divider(),
          ],
        ),
      ),
    );
  }
}
