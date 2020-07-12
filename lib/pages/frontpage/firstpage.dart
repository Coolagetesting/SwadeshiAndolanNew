import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swadeshiandolan/firebase/database.dart';
import 'package:swadeshiandolan/models/item.dart';
import 'package:swadeshiandolan/pages/apppage.dart';
import 'package:swadeshiandolan/pages/frontpage/footer.dart';
import 'package:swadeshiandolan/pages/frontpage/middle.dart';
import 'package:swadeshiandolan/utils/colors.dart';
import 'package:swadeshiandolan/widgets/item1.dart';
import 'package:swadeshiandolan/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'header.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  TabController _tabController;
  List<Tab> tabList = [
    new Tab(text: 'Social'),
    new Tab(text: 'Chatting'),
    new Tab(text: 'Shopping'),
    new Tab(text: 'Scanning'),
    new Tab(text: 'Office'),
    new Tab(text: 'Music'),
    new Tab(text: 'Browsers'),
    new Tab(text: 'Security'),
    new Tab(text: 'News'),
    new Tab(text: 'Finance'),
    new Tab(text: 'Mail'),
    new Tab(text: 'Utility'),
    new Tab(text: 'Video Calling'),
    new Tab(text: 'File Sharing'),
    new Tab(text: 'Video Editing'),
    new Tab(text: 'Photo Editing'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 16, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Coolors.primaryColor,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Navbar(),
            HeaderScreen(),
            if (context.isMobile) IntroductionWidget().p16(),
            MiddleScreen(),
            tabBar(),
            FooterScreen(),
          ]),
        ));
  }

  Widget itemsList(String item) {
    return Expanded(
      child: StreamBuilder(
        stream: itemsRef.document('Apps').collection(item).snapshots(),
        builder: (context, snapshot) {
          return (snapshot.hasData && snapshot.data.documents.length > 0)
              ? ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot doc = snapshot.data.documents[index];
                    Item itemModel = Item.fromDocument(doc);
                    return Item1(item: itemModel);
                  },
                )
              : Container(
                  child: Text('No Data Available'),
                );
        },
      ),
    );
  }

  Widget tabBar() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          TabBar(
            isScrollable: true,
              controller: _tabController,
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.white,
              tabs: tabList),
          Expanded(
            child: TabBarView(
              children: [
                itemsList('Social'),
                itemsList('Chatting'),
                itemsList('Shopping'),
                itemsList('Scanning'),
                itemsList('Office'),
                itemsList('Music'),
                itemsList('Browsers'),
                itemsList('Security'),
                itemsList('News'),
                itemsList('Finance'),
                itemsList('Mail'),
                itemsList('Utility'),
                itemsList('Video Calling'),
                itemsList('File Sharing'),
                itemsList('Video Editing'),
                itemsList('Photo Editing'),
              ],
              controller: _tabController,
            ),
          )
        ],
      ),
    );
  }
}
