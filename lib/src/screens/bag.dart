import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: BLACK),
        backgroundColor: WHITE,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text: 'Shopping Bag'),
        actions: <Widget> [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Stack(
            children: <Widget> [
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Image.asset('images/shopping-bag.png', width: 20, height: 20,),
               ),
              Positioned(
                right: 7,
                bottom: 5,
                child: Container(
                    decoration: BoxDecoration(
                        color: WHITE,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: GREY[400],
                              offset: Offset(2, 3),
                              blurRadius: 3
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(left:4, right: 4),
                      child: CustomText(
                        text: '25',
                        color: RED,
                        size: 12,
                        weight: FontWeight.bold,
                      ),
                    )),
              )
            ]
            ),
          )
        ],
      ),
      backgroundColor: WHITE,
    );
  }
}

