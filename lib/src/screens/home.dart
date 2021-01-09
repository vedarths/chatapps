import 'dart:ui';

import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/helpers/navigation.dart';
import 'package:chatapps/src/providers/category.dart';
import 'package:chatapps/src/providers/product.dart';
import 'package:chatapps/src/providers/user.dart';
import 'package:chatapps/src/screens/product_search.dart';
import 'package:chatapps/src/widgets/bottom_navigation.dart';
import 'package:chatapps/src/widgets/products.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bag.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomText(text: "Hello Foody!", size: 28, color: WHITE,),
              ),
              Stack(
                children: <Widget>[
                  IconButton(
                      color: WHITE,
                      icon: Icon(Icons.notifications_none), onPressed: () {}),
                  Positioned(
                      top: 10,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: RED,
                            borderRadius: BorderRadius.circular(20)),
                      )),
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
                  textInputAction: TextInputAction.search,
                  onSubmitted: (pattern) async {
                    await productProvider.search(name: pattern);
                    changeScreen(context, ProductSearch());
                  },
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
            color: WHITE,
            family: 'Monteserrat',
          ),
        ),
        ProductWidget(products: productProvider.products),
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
