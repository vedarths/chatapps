import 'package:chatapps/src/helpers/screen_navigation.dart';
import 'package:chatapps/src/models/products.dart';
import 'package:chatapps/src/screens/details.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:flutter/material.dart';
import '../helpers/commons.dart';

List<Product> productsList = [
  Product(name: 'Cereals', image: '1.jpg', rating: 4.2, vendor: 'GoodFoods', price: 5.99, wishList: true),
  Product(name: 'Tacos', image: '5.jpg', rating: 3.9, vendor: 'GoodFoods', price: 10.99, wishList: false),
];
class Featured extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 14,16, 12),
              child: GestureDetector(
                onTap: () {
                  changeScreen(context, Details(product: productsList[index],));
                },
                child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(color: WHITE, boxShadow: [
                    BoxShadow(
                        color: RED[50],
                        offset: Offset(15, 5),
                        blurRadius: 30)
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: '${productsList[index].name}',),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: WHITE,
                                    boxShadow: [
                                      BoxShadow(
                                          color: GREY[300],
                                          offset: Offset(1, 1),
                                          blurRadius: 4
                                      )
                                    ]
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: productsList[index].wishList ? Icon(Icons.favorite, color: RED, size: 18,) : Icon(Icons.favorite_outline, color: RED, size: 18,),
                          )
                        ],
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:10.0),
                                child: CustomText(text: '${productsList[index].rating}', color: GREY, size: 14,),
                              ),
                              SizedBox(height: 2,),
                              Icon(Icons.star, color: RED, size: 16,),
                              Icon(Icons.star, color: RED, size: 16,),
                              Icon(Icons.star, color: RED, size: 16,),
                              Icon(Icons.star, color: RED, size: 16,),
                              Icon(Icons.star, color: GREY, size: 16,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(text: '${productsList[index].price}', weight: FontWeight.bold,),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
