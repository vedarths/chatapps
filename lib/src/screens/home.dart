import 'dart:ui';

import 'package:chatapps/src/widgets/categories.dart';
import 'package:chatapps/src/widgets/featured_products.dart';
import 'package:chatapps/src/widgets/small_floating_button.dart';
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
                child: CustomText(text: "What do you want today?", size: 28),
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
        SizedBox(
          height: 5,
        ),
        Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(color: WHITE, boxShadow: [
                BoxShadow(color: GREY[300], offset: Offset(1, 1), blurRadius: 4)
              ]),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: BLUE,
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Find my Food", border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: BLUE,
                ),
              ),
            )),
        Categories(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: "Featured",
            size: 20,
            color: GREY,
            family: 'Monteserrat',
          ),
        ),
        Featured(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: "Popular",
            size: 20,
            color: GREY,
            family: 'Monteserrat',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/food.jpg')),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SmallButton(Icons.favorite),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: WHITE,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow[900],
                                size: 20,
                              ),
                            ),
                            Text('4.5')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                  child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.05),
                          Colors.black.withOpacity(0.025),
                        ])),
              )),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Pancakes \n',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: WHITE,
                                  fontFamily: 'Monteserrat')),
                          TextSpan(
                              text: 'by: \n',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: WHITE,
                                  fontFamily: 'Monteserrat')),
                          TextSpan(
                              text: 'Pizza hut \n',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: WHITE,
                                  fontFamily: 'Monteserrat')),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: '\$12.99 \n',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal,
                                    color: WHITE,
                                    fontFamily: 'Monteserrat')),
                          ],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ])),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: WHITE,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                    'images/home.png',
                    width: 26,
                    height: 26,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/target.png',
                  width: 26,
                  height: 26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/shopping-bag.png',
                  width: 26,
                  height: 26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/avatar.png',
                  width: 26,
                  height: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
