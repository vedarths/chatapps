import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/providers/product.dart';
import 'package:chatapps/src/widgets/small_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Popular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Container(
        height: 680,
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: productProvider.products.length,
        itemBuilder: (_, index) {
          return Padding(
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
                          child: Image.network(productProvider.products[index].image)),
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
                                    text: '${productProvider.products[index].name}. \n',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: WHITE,
                                        fontFamily: 'Monteserrat')),
                                TextSpan(
                                    text: '${productProvider.products[index].categoryId} \n',
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
                                      text: '\£${productProvider.products[index].price} \n',
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
          );
      }
    )
    );
  }

}