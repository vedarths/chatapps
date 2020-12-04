import 'package:carousel_pro/carousel_pro.dart';
import 'package:chatapps/src/models/products.dart';
import 'package:chatapps/src/helpers/commons.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final Product product;

  const Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Carousel(
                      images: [
                        AssetImage('images/${widget.product.image}'),
                        AssetImage('images/${widget.product.image}'),
                        AssetImage('images/${widget.product.image}')
                      ],
                      dotBgColor: WHITE,
                      dotColor: GREY,
                      dotIncreasedColor: RED,
                      dotIncreaseSize: 1.2,
                      autoplay: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: () {Navigator.pop(context);}),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/shopping-bag.png', height: 30, width: 30,),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
