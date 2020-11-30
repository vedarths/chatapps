import 'dart:ui';

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
                  padding: const EdgeInsets.all(8.0),
                  child: Text("What would you like to order?",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Monteserrat',
                          fontWeight: FontWeight.bold)),
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
                              color: BLUE,
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                ),
              ])
        ])));
  }
}
