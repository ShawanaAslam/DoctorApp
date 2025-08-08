
import 'package:doctorapp/controller/widgets/selectedButton.dart';
import 'package:doctorapp/views/home_view/helpCenterView/HelpCenterWidget/espentionTileWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HelpCenterWidget/helpExpansionWidget.dart';
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


                       HelpExpansionWidget(txt: "How can I schedule an appointment?",
                         txt1:  "Scheduling an appointment on a telemedicine app typically involves a user-friendly and intuitive process",),

                        ExpansionTileWidget(txt:'How can I schedule an appointment?'
                          ,txt1:'Data1' ,txt2:'Data2' ,),


                        ExpansionTileWidget(txt:'How can I schedule an appointment?'
                          ,txt1:'Data1' ,txt2:'Data2' ,),

                        ExpansionTileWidget(txt:'How can I schedule an appointment?'
                          ,txt1:'Data1' ,txt2:'Data2' ,),

                        ExpansionTileWidget(txt:'How can I schedule an appointment?'
                          ,txt1:'Data1' ,txt2:'Data2' ,),

                        ExpansionTileWidget(txt:'How can I schedule an appointment?'
                          ,txt1:'Data1' ,txt2:'Data2' ,),
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
                        ExpansionTileWidget(
                          leadingIcon: Icons.mic_none_rounded,
                          txt:'Customize Services'
                          ,txt1:'Data1' ,txt2:'Data2' ,),
                        HelpExpansionWidget(
                        titleIcon: Icons.phone_callback,
                               contentIcon:
                               Icons.star_border_purple500_rounded
                               ,txt: "WhatsApp",
                          txt1:  "0810 666 6666",),

                        ExpansionTileWidget(
                          leadingIcon:  Icons.webhook_sharp,
                          txt:'website'
                          ,txt1:'Data1' ,txt2:'Data2' ,),
                        ExpansionTileWidget(
                          leadingIcon:  Icons.facebook_outlined,
                          txt:'facebook'
                          ,txt1:'Data1' ,txt2:'Data2' ,),
                        ExpansionTileWidget(
                          leadingIcon:  Icons.transfer_within_a_station,
                          txt:'twitter'
                          ,txt1:'Data1' ,txt2:'Data2' ,),
                        ExpansionTileWidget(
                          leadingIcon:Icons.insert_comment_outlined,
                          txt:'instagram'
                          ,txt1:'Data1' ,txt2:'Data2' ,),

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
