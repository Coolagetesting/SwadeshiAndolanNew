import 'package:swadeshiandolan/pages/items_list_page.dart';
import 'package:swadeshiandolan/widgets/item1.dart';
import 'package:swadeshiandolan/widgets/item2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  final List<String> menuItems = [
    "Mobiles",
    "Cold Drinks",
    "Soap",
    "Electronics",
    "Computer and tablets",
    "Online Shopping",
    "Car",
    "Toothbrush",
    "Tea Coffee",
    "Blade",
    "Shaving Cream",
    "Shampoo",
    "Talcum Powder",
    "Milk",
    "Mobile Connection",
    "Textile",
    "Bikes",
    "Footwear",
    "Cloths",
    "Garments",
    "Watches",
    "Child Food",
    "Salt",
    "Icecream",
    "Biscut",
    "Ketchup",
    "Snacks",
    "water",
    "tonic",
    "oil",
    "Washing Powder",
    "Cosmetics",
    "Pen",
  ];

  final List<String> menuIcons = [
    "icon_Mobiles",
    "icon_Cold_Drinks",
    "icon_Soap",
    "icon_Electronics",
    "icon_Computer_and_tablets",
    "icon_Online_Shopping",
    "icon_Car",
    "icon_Toothbrush",
    "icon_Tea_Coffee",
    "icon_Blade",
    "icon_Shaving_Cream",
    "icon_Shampoo",
    "icon_Talcum_Powder",
    "icon_Milk",
    "icon_Mobile_Connection",
    "icon_Textile",
    "icon_Bikes",
    "icon_Footwear",
    "icon_Cloths",
    "icon_Garments",
    "icon_Watches",
    "icon_Child_Food",
    "icon_Salt",
    "icon_Icecream",
    "icon_Biscut",
    "icon_Ketchup",
    "icon_Snacks",
    "icon_water",
    "icon_tonic",
    "icon_oil",
    "icon_Washing_Powder",
    "icon_Cosmetics",
    "icon_Pen",
  ];

  bool sidebarOpen = false;
  double yOffset = 0;
  double xOffset = 60;
  double pageScale = 1;

  int selectedMenuItem = 0;

  String pageTitle = "Mobiles";

  Widget pageContent = ListView(
    padding: EdgeInsets.only(left: 10, right: 70),
    scrollDirection: Axis.vertical,
    children: <Widget>[
      Center(
        child: Text(
          "Indian Mobile Companies",
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
        pageTitle = "Mobiles";
        break;
      case 1:
        pageTitle = "Cold Drinks";
        break;
      case 2:
        pageTitle = "Soap";
        break;
      case 3:
        pageTitle = "Electronics";
        break;
      case 4:
        pageTitle = "Computer and tablets";
        break;
      case 5:
        pageTitle = "Online Shopping";
        break;
      case 6:
        pageTitle = "Car";
        break;
      case 7:
        pageTitle = "Toothbrush";
        break;
      case 8:
        pageTitle = "Tea and Coffee";
        break;
      case 9:
        pageTitle = "Blade";
        break;
      case 10:
        pageTitle = "Shaving Cream";
        break;
      case 11:
        pageTitle = "Shampoo";
        break;
      case 12:
        pageTitle = "Talcum Powder";
        break;
      case 13:
        pageTitle = "Milk";
        break;
      case 14:
        pageTitle = "Mobile Connection";
        break;
      case 15:
        pageTitle = "Textile";
        break;
      case 16:
        pageTitle = "Bikes";
        break;
      case 17:
        pageTitle = "Footwear";
        break;
      case 18:
        pageTitle = "Cloths";
        break;
      case 19:
        pageTitle = "Garments";
        break;
      case 20:
        pageTitle = "Watches";
        break;
      case 21:
        pageTitle = "Child Food";
        break;
      case 22:
        pageTitle = "Salt";
        break;
      case 23:
        pageTitle = "Icecream";
        break;
      case 24:
        pageTitle = "Biscut";
        break;
      case 25:
        pageTitle = "Ketchup";
        break;
      case 26:
        pageTitle = "Snacks";
        break;
      case 27:
        pageTitle = "water";
        break;
      case 28:
        pageTitle = "tonic";
        break;
      case 29:
        pageTitle = "oil";
        break;
      case 30:
        pageTitle = "Washing Powder";
        break;
      case 31:
        pageTitle = "Cosmetics";
        break;
      case 32:
        pageTitle = "Pen";
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
                    itemText: "Products",
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
                "assets/images/menuicon/products/$itemIcon.png",
                width: 20,
                height: 20,
                color: Colors.white,
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
