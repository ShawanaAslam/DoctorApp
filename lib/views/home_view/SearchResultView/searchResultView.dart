

import 'package:doctorapp/views/home_view/SearchResultView/SearchResulrWidget/searchResultTab.dart';
import 'package:flutter/material.dart';

import '../../../controller/widgets/profileFormFieldWidget.dart';
import '../../../controller/widgets/text_widget.dart';
import '../FavoriteView/FavoriteViewWidget/doctorTabWidget.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({super.key});

  @override
  State<SearchResultView> createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: TextWidget(
          txt: 'Search Result',
          clr: Colors.black,
          fntwt: FontWeight.w500,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [Icon(Icons.restart_alt_outlined)],
      ),
      body:
      Padding(
        padding: EdgeInsets.only(left: 15.0,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileFormfieldwidget(txt: 'Search', icn1: Icons.search),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
              txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Johnson',txt1: 'Oncologists',
                txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Nkechi Okeli',txt1: 'Oncologists',
                txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              SearchResultTab(txt: 'Dr.Kenny Adeola',txt1: 'Oncologists',
                txt2: '4.4',txt3: '503 Reviews',),
              SizedBox(height: 10,),
              
            ],
          ),
        ),
      ),
    );
  }
}
