
import 'package:doctorapp/controller/widgets/selectedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/widgets/helCenterField.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../../../controller/widgets/text_widget.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({super.key});

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

class _HelpCenterViewState extends State<HelpCenterView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isOpen=false;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int check = 0;

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
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            ProfileFormfieldwidget(txt: 'Search', icn1: Icons.search),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 3,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: Colors.green),
                insets: EdgeInsets.symmetric(horizontal: -30),
              ),
              tabs: [
                Tab(text: 'FAQ'),
                Tab(text: 'Contact Us'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [

       /////////////////////////////////////////////////////////////

                  // first tab (FAQ) with vertical scroll

                  SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
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
                        SizedBox(height: 10),
                       ExpansionTile(
                         //  leading: Icon(Icons.),
                           title: Text(''),
                       onExpansionChanged: (value){
                             isOpen=value;
                             setState(() {

                             });

                       },
                         trailing: isOpen?Icon(Icons.keyboard_arrow_down_outlined):
                         Icon(Icons.keyboard_arrow_up),
                         children: [
                           Text('Data'),
                           Text('Data'),
                         ],
                       ),

                       // HelpCenterField(),
                        SizedBox(height: 5),
                        ProfileFormfieldwidget(
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'How can I schedule an appointment?',
                        ),
                        SizedBox(height: 5),
                        ProfileFormfieldwidget(
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'How can I schedule an appointment?',
                        ),
                        SizedBox(height: 5),
                        ProfileFormfieldwidget(
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'How can I schedule an appointment?',
                        ),
                        SizedBox(height: 5),
                        ProfileFormfieldwidget(
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'How can I schedule an appointment?',
                        ),
                        SizedBox(height: 5),
                        ProfileFormfieldwidget(
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'How can I schedule an appointment?',
                        ),
                      ],
                    ),
                  ),

//////////////////////////////////////////////////////////////////

                  //  Second tab (Contact Us)

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
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
                        ProfileFormfieldwidget(
                          icn1:  Icons.mic_none_rounded,
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'Customize Services',
                        ),
                    SizedBox(height: 10,),
                            Container(
                              height: 100,
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
                      hintText: 'Whatsapp',
                      suffixIcon: Icon(Icons.keyboard_arrow_up_outlined,
                          color: Colors.green,size: 25),
                      prefixIcon: Icon(Icons.phone_callback,
                    
                        color: Colors.green,size: 20,),
                    
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
                    child: Row(
                      children: [
                        Icon(Icons.star_border_purple500_rounded, color: Colors.green,size: 16),
                        SizedBox(width: 10,),
                        Text('0810 666 6666',
                          style: TextStyle(fontSize: 16, color: Colors.grey),),
                      ],
                    ),
                                    ),
                    
                                  ),
                                ],
                              ),
                            ),
                        SizedBox(height: 10,),
                    
                        ProfileFormfieldwidget(
                          icn1:  Icons.webhook_sharp,
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'Website',
                        ),
                        SizedBox(height: 10,),
                    
                        ProfileFormfieldwidget(
                          icn1:  Icons.facebook_outlined,
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'facebook',
                        ),
                        SizedBox(height: 10,),
                    
                        ProfileFormfieldwidget(
                          icn1:  Icons.transfer_within_a_station,
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'twitter',
                        ),
                    
                        SizedBox(height: 10,),
                    
                        ProfileFormfieldwidget(
                          icn1:  Icons.insert_comment_outlined,
                          icn: Icons.keyboard_arrow_down_outlined,
                          txt: 'instagram',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
