import 'package:swadeshiandolan/pages/apppage.dart';
import 'package:swadeshiandolan/pages/about.dart';
import 'package:swadeshiandolan/pages/reasion.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:swadeshiandolan/utils/colors.dart';

import '../utils/universal_variable.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Image.asset(
            "assets/swadeshiandolan.png",
            height: 100,
            width: 300,
          ),
          actions: [
                          MaterialButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AppPage()));
                },
                child: Text(
                  'Apps',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ReasonPage()));
                },
                child: Text(
                  'Reason',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: UniversalVariables.blackColor,
                  builder: (context) => AboutPage(),
                  isScrollControlled: true,
                ),
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  launch("https://coolage.app");
                },
                child: Text(
                  "Visit Coolage",
                  style: TextStyle(color: Colors.white),
                ),
              )
          ],
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      color: Coolors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/swadeshiandolan.png",
            height: 100,
            width: 300,
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AppPage()));
                },
                child: Text(
                  'Apps',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ReasonPage()));
                },
                child: Text(
                  'Reason',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: UniversalVariables.blackColor,
                  builder: (context) => AboutPage(),
                  isScrollControlled: true,
                ),
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {
                  launch("https://coolage.app");
                },
                child: Text(
                  "Visit Coolage",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      color: Coolors.primaryColor,
      child: Column(children: <Widget>[
        Image.asset(
          "assets/swadeshiandolan.png",
          height: 100,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AppPage()));
                },
                child: Text(
                  "Apps",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ReasonPage()));
                },
                child: Text(
                  "Reason",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: UniversalVariables.blackColor,
                  builder: (context) => AboutPage(),
                  isScrollControlled: true,
                ),
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          color: Colors.pink,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {
            launch("https://coolage.app");
          },
          child: Text(
            "Visit Coolage",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
