
import 'package:doctorapp/controller/widgets/profileRow.dart';
import 'package:doctorapp/controller/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String selected = 'Cancel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TextWidget(txt: 'Profile',clr: Colors.black,fntwt: FontWeight.w500,),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      ),
body: Center(
  child: Padding(
    padding: const EdgeInsets.only(left: 10,right: 10),
    child: Column(
      children: [
        Stack(

          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person,size: 50,),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: CircleAvatar(
                radius: 20,
                  backgroundColor: Colors.green[300],
                  child: Icon(Icons.edit,color: Colors.white,size: 20,)),

            ),
          ],
        ),
       SizedBox(height: 20,),
        TextWidget(txt: 'Adeowle Abdulazez',clr: Colors.black,fntwt: FontWeight.w500,),
        SizedBox(height: 40,),
       ProfileRow(txt: 'Profile', icn: Icons.person_outline_outlined, ontp: () {  },),
        Divider(),
        ProfileRow(txt: 'Favourite', icn: Icons.heart_broken, ontp: () { },),
        Divider(),
        ProfileRow(ontp: () { },txt: 'Help Center', icn: Icons.help_outline),
        Divider(),
        ProfileRow(ontp: () { },txt: 'Privacy Policy', icn: Icons.privacy_tip_outlined),
        Divider(),
        ProfileRow(ontp: () { },txt: 'Setting', icn: Icons.settings),
        Divider(),
        ProfileRow(ontp: () { },txt: 'Payment Options', icn: Icons.payment),
        Divider(),
        ProfileRow(ontp: () { },txt: 'Pasword Manager', icn: Icons.lock_outline),
        Divider(),
        ProfileRow(ontp: () {

        showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return StatefulBuilder(
          builder: (context, setState) {
          bool isYesSelected = false;

          return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [



          TextWidget(txt:
          'Log out',
          fntsze: 20,
          fntwt: FontWeight.bold,
          ),

          SizedBox(height: 10),

          TextWidget(txt:
          'Are you sure you want to log out?',
          fntsze: 14,
          clr: Colors.grey,
          ),
              Divider(thickness: 4,),
          SizedBox(height: 25),

          // Buttons Row
          Row(
          children: [
            // Cancel Button
            Expanded(

              child:
              InkWell(
                onTap: () {
                  setState(() {
                    selected = 'Cancel';
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: selected == 'Cancel' ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: selected == 'Cancel' ? Colors.white : Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),

            // Yes, Log out Button
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selected = 'Yes';
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: selected == 'Yes' ? Colors.green : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Yes, Log out',
                    style: TextStyle(
                      color: selected == 'Yes' ? Colors.white : Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

          ],)
]
          )
          );
          },
          );

          });
        },txt: 'Log Out', icn: Icons.login_rounded),
        Divider(),
      ],
    ),
  ),
),
    );
  }
}

