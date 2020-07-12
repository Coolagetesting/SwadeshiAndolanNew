import 'package:swadeshiandolan/pages/items_list_page.dart';
import 'package:swadeshiandolan/widgets/item1.dart';
import 'package:swadeshiandolan/widgets/item2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  final List<String> menuItems = [
    "Social",
    "Chatting",
    "Shopping",
    "Scanning",
    "Office",
    "Music",
    "Browsers",
    "Games",
    "News",
    "Security",
    "Finance",
    "Mail",
    "Utility",
    "Video Calling",
    "File Sharing",
    "Video Editing",
    "Photo Editing",
  ];

  final List<String> menuIcons = [
    "icon_Social",
    "icon_Chatting",
    "icon_Shopping",
    "icon_Scanning",
    "icon_Office",
    "icon_Music",
    "icon_Browsers",
    "icon_Games",
    "icon_News",
    "icon_Security",
    "icon_Finance",
    "icon_Mail",
    "icon_Utility",
    "icon_Video_Calling",
    "icon_File_Sharing",
    "icon_Video_Editing",
    "icon_Photo_Editing",
  ];

  bool sidebarOpen = false;
  double yOffset = 0;
  double xOffset = 60;
  double pageScale = 1;

  int selectedMenuItem = 0;

  String pageTitle = "Social App";

  Widget pageContent = ListView(
    padding: EdgeInsets.only(left: 10, right: 70),
    scrollDirection: Axis.vertical,
    children: <Widget>[
      Center(
        child: Text(
          "Social App Alternative",
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      Item1(
          name: 'Hike',
          rating: '4.5',
          usersNo: '181,861',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/hike.jpeg',
          review: 'Viansh Malik ★★★★★',
          reviewer:
              'The application has amazing concept but a lot of bugs. For example in home when you call, only the owners voice is clearly audible. '),
      Item2(
          name: 'Likee',
          rating: '4.6',
          usersNo: '136',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/likee.png',
          review: 'Karan Ravat ★★★★★',
          reviewer: 'It'
              's a very good application to connect with the people easily but a small problem in video call when We do a video call to anyone then it'
              's show error. otherwise it'
              's very nice 😊'),
      Item1(
          name: 'sharechat',
          rating: '4.5',
          usersNo: '181,861',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/sharechat.png',
          review: 'Viansh Malik ★★★★★',
          reviewer:
              'The application has amazing concept but a lot of bugs. For example in home when you call, only the owners voice is clearly audible. '),
      Item2(
          name: 'Kwai',
          rating: '4.5',
          usersNo: '181,861',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/kwai.png',
          review: 'Viansh Malik ★★★★★',
          reviewer:
              'The application has amazing concept but a lot of bugs. For example in home when you call, only the owners voice is clearly audible. '),
      Item1(
          name: 'Snapchat',
          rating: '4.5',
          usersNo: '181,861',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/Snapchat.jpeg',
          review: 'Viansh Malik ★★★★★',
          reviewer:
              'The application has amazing concept but a lot of bugs. For example in home when you call, only the owners voice is clearly audible. '),
      Item2(
          name: 'Hago',
          rating: '4.5',
          usersNo: '181,861',
          type: 'Free',
          imageUrl: 'assets/images/Apps/chatting/Hago.png',
          review: 'Viansh Malik ★★★★★',
          reviewer:
              'The application has amazing concept but a lot of bugs. For example in home when you call, only the owners voice is clearly audible. '),
    ],
  );

  void setSidebarState() {
    setState(() {
      xOffset = sidebarOpen ? 265 : 60;
      yOffset = sidebarOpen ? 70 : 0;
      pageScale = sidebarOpen ? 0.8 : 1;
    });
  }

  void setPageTitle() {
    switch (selectedMenuItem) {
      case 0:
        pageTitle = "Social App";
        break;
      case 1:
        pageTitle = "Chatting";
        break;
      case 2:
        pageTitle = "Shopping";
        break;
      case 3:
        pageTitle = "Scanning";
        break;
      case 4:
        pageTitle = "Office";
        break;
      case 5:
        pageTitle = "Music";
        break;
      case 6:
        pageTitle = "Browsers";
        break;
      case 7:
        pageTitle = "Games";
        break;
      case 8:
        pageTitle = "News";
        break;
      case 9:
        pageTitle = "Security";
        break;
      case 10:
        pageTitle = "Finance";
        break;
      case 11:
        pageTitle = "Mail";
        break;
      case 12:
        pageTitle = "Utility";
        break;
      case 13:
        pageTitle = "Video Calling";
        break;
      case 14:
        pageTitle = "File_Sharing";
        break;
      case 15:
        pageTitle = "Video_Editing";
        break;
      case 16:
        pageTitle = "Photo_Editing";
        break;
    }
  }

  void setPageContent() {
    switch (selectedMenuItem) {
      case 0:
        pageContent = ItemsListPage();
        break;
      case 1:
        pageContent = ChattingItemList();
        break;
      case 2:
        pageContent = ItemsListPage();
        break;
      case 3:
        pageContent = ItemsListPage();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(),
                  child: Container(
                    color: Color(0xFFB1F2B36),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            sidebarOpen = true;
                            setSidebarState();
                          },
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              child: Icon(Icons.search)),
                        ),
                        Container(
                            child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.all(20),
                                hintText: "Search here...",
                                hintStyle: TextStyle(
                                  color: Color(0xFFB666666),
                                )),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                      child: new ListView.builder(
                          itemCount: menuItems.length,
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  sidebarOpen = false;
                                  selectedMenuItem = index;
                                  setSidebarState();
                                  setPageTitle();
                                  setPageContent();
                                },
                                child: MenuItem(
                                  itemIcon: menuIcons[index],
                                  itemText: menuItems[index],
                                  selected: selectedMenuItem,
                                  position: index,
                                ),
                              ))),
                ),
                Container(
                  child: MenuItem(
                    itemIcon: "icon_home",
                    itemText: "Applications",
                    selected: selectedMenuItem,
                    position: menuItems.length + 1,
                  ),
                )
              ],
            ),
          ),
          AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 200),
            transform: Matrix4.translationValues(xOffset, yOffset, 1.0)
              ..scale(pageScale),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: sidebarOpen
                    ? BorderRadius.circular(20)
                    : BorderRadius.circular(0)),
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 24),
                    height: 60,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            sidebarOpen = !sidebarOpen;
                            setSidebarState();
                          },
                          child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(20),
                              child: Icon(Icons.menu)),
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              pageTitle,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )),
                      ],
                    )),
                Expanded(
                  child: pageContent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String itemText;
  final String itemIcon;
  final int selected;
  final int position;
  MenuItem({this.itemText, this.itemIcon, this.selected, this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected == position ? Color(0xFFB151E26) : Color(0xFFB1F2B36),
      child: Row(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/menuicon/apps/$itemIcon.png",
                width: 20,
                height: 20,
              )),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              itemText,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
