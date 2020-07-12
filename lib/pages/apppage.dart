import 'package:swadeshiandolan/Productpage/Productsidebar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import '../appPages/appsidebar.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: GradientAppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              backgroundColorStart: Colors.orangeAccent,
              backgroundColorEnd: Colors.green,
              //backgroundColor: Color(0xff308e1c),
              bottom: TabBar(
                indicatorColor: Color(0xff9962D0),
                tabs: [
                  Tab(
                    icon: Icon(FontAwesomeIcons.appStore),
                  ),
                  Tab(icon: Icon(FontAwesomeIcons.productHunt)),
                ],
              ),
              centerTitle: true,
              title: Text("Apps & Products"),
            ),
            body: TabBarView(
              children: <Widget>[
                AppContainer(),
                ProductContainer(),
              ],
            )),
      ),
    );
  }
}
