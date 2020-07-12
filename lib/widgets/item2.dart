import 'package:swadeshiandolan/appPages/item_page.dart';
import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  final String name, rating, usersNo, type, imageUrl, reviewer, review;

  Item2(
      {this.name,
      this.rating,
      this.usersNo,
      this.type,
      this.imageUrl,
      this.reviewer,
      this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: <Widget>[
          /// Item card
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize(
                size: Size.fromHeight(182.0),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    /// Item description inside a material
                    Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material(
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0xFFDA4453),
                            Color(0xFF89216B)
                          ])),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => ItemPage())),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  /// Title and rating
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(name,
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(rating,
                                              style: TextStyle(
                                                  color: Colors.amber,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 34.0)),
                                        ],
                                      ),
                                    ],
                                  ),

                                  /// Infos
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Text(usersNo,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700)),
                                      ),
                                      Text('Users',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: Colors.green,
                                          child: Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: Text(type,
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// Item image
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(54.0),
                          child: Material(
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset(imageUrl),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          /// Review
          Padding(
            padding: EdgeInsets.only(
              top: 160.0,
              right: 32.0,
            ),
            child: Material(
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text(reviewer.substring(0, 1)),
                  ),
                  title: Text(reviewer),
                  subtitle: Text(review,
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
