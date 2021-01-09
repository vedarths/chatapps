import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/helpers/navigation.dart';
import 'package:chatapps/src/providers/product.dart';
import 'package:chatapps/src/widgets/bottom_navigation.dart';
import 'package:chatapps/src/widgets/products.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bag.dart';
import 'home.dart';

class ProductSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: WHITE),
        backgroundColor: BLACK,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: productProvider.products.length < 1
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomText(
                  text: "No products found",
                  color: WHITE,
                )
              ],
            )
          : ProductWidget(products: productProvider.searched),
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
                BottomNavIcon(
                  image: 'home.png',
                  name: 'Home',
                  function: () {
                    changeScreen(context, HomePage());
                  },
                ),
                BottomNavIcon(
                  image: 'shopping-bag.png',
                  name: 'Cart',
                  function: () {
                    changeScreen(context, ShoppingBag());
                  },
                ),
                BottomNavIcon(
                  image: 'orders.png',
                  name: 'My Orders',
                  function: () {
                    changeScreen(context, ShoppingBag());
                  },
                ),
                BottomNavIcon(
                  image: 'settings.png',
                  name: 'Settings',
                  function: () {
                    changeScreen(context, HomePage());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
