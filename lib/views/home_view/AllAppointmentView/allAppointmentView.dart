//
// import 'package:flutter/material.dart';
//
// import '../../../controller/widgets/text_widget.dart';
//
// class AllAppointmentView extends StatefulWidget {
//   const AllAppointmentView({super.key});
//
//   @override
//   State<AllAppointmentView> createState() => _AllAppointmentViewState();
// }
//
// class _AllAppointmentViewState extends State<AllAppointmentView>  with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title: TextWidget(
//           txt: 'All Appointment',
//           clr: Colors.black,
//           fntwt: FontWeight.w500,
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.arrow_back),
//         ),actions: [
//         Icon(Icons.search),
//         SizedBox(width: 10,)
//       ],
//       ),
//       body: Column(
//         children: [
//     TabBar(
//     controller: _tabController,
//     indicatorColor: Colors.green,
//     indicatorWeight: 3,
//     labelColor: Colors.green,
//     unselectedLabelColor: Colors.grey,
//     indicator: UnderlineTabIndicator(
//     borderSide: BorderSide(width: 3.0, color: Colors.green),
//     insets: EdgeInsets.symmetric(horizontal: -30),
//     ),
//     tabs: [
//     Tab(text: 'FAQ'),
//     Tab(text: 'Contact Us'),
//     ],
//     ),
//     Expanded(
//     child: TabBarView(
//     controller: _tabController,
//     children: [
//
//       Column(),
//       Column()
//     ])
//     )
//     ] ),
//     );
//   }
// }


import 'package:doctorapp/controller/widgets/selectedButton.dart';
import 'package:flutter/material.dart';

import '../../../controller/widgets/helCenterField.dart';
import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../../../controller/widgets/text_widget.dart';

class AllAppointmentView extends StatefulWidget {
  const AllAppointmentView({super.key});

  @override
  State<AllAppointmentView> createState() => _AllAppointmentViewState();
}

class _AllAppointmentViewState extends State<AllAppointmentView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          txt: 'All Appointment',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [

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
                Tab(text: 'Upcoming'),
                Tab(text: 'Completed'),
                Tab(text: 'Cancel'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [

                  /////////////////////////////////////////////////////////////

                  // first tab (upcoming) with vertical scroll



                 //////////////////////////////////////////////////////////////////

                  //  Second tab (Completed)



                  /////////////////////////////////////////////////////////////

                  //  3r tab tab (Cancel)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
