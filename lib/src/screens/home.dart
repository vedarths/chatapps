import 'dart:ui';

import 'package:chatapps/src/helpers/navigation.dart';
import 'package:chatapps/src/providers/category.dart';
import 'package:chatapps/src/providers/product.dart';
import 'package:chatapps/src/providers/user.dart';
import 'package:chatapps/src/widgets/bottom_navigaton.dart';
import 'package:chatapps/src/widgets/featured_products.dart';
import 'package:chatapps/src/widgets/popular_products.dart';
import 'package:chatapps/src/widgets/small_floating_button.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:chatapps/src/helpers/commons.dart';
import 'package:provider/provider.dart';

import 'bag.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomText(text: "Hello ${userProvider.userModel.email}", size: 28, color: WHITE,),
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                      color: WHITE,
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
                      hintText: "Find a Dish", border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: BLUE,
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: "This Week's Menu",
            size: 20,
            color: GREY,
            family: 'Monteserrat',
          ),
        ),
        Popular(),
      ])),
      bottomNavigationBar: Container(
        height: 75,
        color: WHITE,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: WHITE,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomNavIcon(image: 'home.png',name: 'Home',function: () {changeScreen(context, HomePage());},),
                  BottomNavIcon(image: 'shopping-bag.png',name: 'Cart',function: () {changeScreen(context, ShoppingBag());},),
                  BottomNavIcon(image: 'orders.png',name: 'My Orders',function: () {changeScreen(context, ShoppingBag());},),
                  BottomNavIcon(image: 'settings.png',name: 'Settings',function: () {changeScreen(context, HomePage());},),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
