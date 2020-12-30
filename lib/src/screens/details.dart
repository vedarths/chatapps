import 'package:carousel_pro/carousel_pro.dart';
import 'package:chatapps/src/models/product.dart';
import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/widgets/small_floating_button.dart';
import 'package:chatapps/src/widgets/title.dart';
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
      backgroundColor: BLACK,
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
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/shopping-bag.png',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 3,
                                bottom: 1,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: WHITE,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: GREY,
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
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      right: 14,
                      bottom: 50,
                      child: Container(
                          decoration: BoxDecoration(
                              color: WHITE,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: GREY,
                                    offset: Offset(2, 3),
                                    blurRadius: 5
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Icon(
                              Icons.favorite,
                              size: 22,
                              color: RED,
                            ),
                          ))
                    ),
                  ],
                )
            ),
            CustomText(text: widget.product.name, size: 26, weight: FontWeight.bold,),
            CustomText(text: "\$" + widget.product.price.toString(), size: 20, weight: FontWeight.w400,color: RED,),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.remove, size: 28,), onPressed: (){}),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color:RED
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 8 ,28 ,8),
                      child: CustomText(text: 'Add to Cart', color: WHITE, size: 24, weight: FontWeight.w600,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.add, size: 28, color: RED,), onPressed: (){}),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
