import 'dart:ui';

import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:chatapps/src/widgets/commons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WHITE,
        body: SafeArea(
            child: ListView(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CustomText(text: "What would you like to order?", size: 28),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: RED,
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                ),
              ]),
          SizedBox(height: 5,),
          Container(
            decoration: BoxDecoration(
              color: WHITE,
              boxShadow: [
                BoxShadow(
                  color: GREY[300],
                  offset: Offset(1,1),
                  blurRadius: 4
                )
              ]
            ),
            child: ListTile(
              leading: Icon(Icons.search, color: BLUE,),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Find Food",
                  border: InputBorder.none
                ),
              ),
              trailing: Icon(Icons.filter_list, color: BLUE,),
            ),
          )
        ])));
  }
}
