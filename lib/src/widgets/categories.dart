import 'package:flutter/material.dart';
import '../helpers/commons.dart';
import 'package:chatapps/src/widgets/title.dart';
import 'package:chatapps/src/models/category.dart';

List<Category> categoriesList = [
  //TODO  - load from DB
  Category(name: 'Salad', image: 'salad.png'),
  Category(name: 'Steak', image: 'steak.png'),
  Category(name: 'Fast food', image: 'sandwich.png'),
  Category(name: 'Desserts', image: 'ice-cream.png'),
  Category(name: 'Beer', image: 'pint.png'),
  Category(name: 'Sea food', image: 'fish.png'),

];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Container(
                      decoration: BoxDecoration(color: WHITE, boxShadow: [
                        BoxShadow(
                            color: RED[50], offset: Offset(4, 6), blurRadius: 20)
                      ]),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Image.asset(
                          "images/${categoriesList[index].image}",
                          width: 50,
                        ),
                      )),
                  SizedBox(height: 5,),
                  CustomText(text: categoriesList[index].name, family: 'Monteserrat', size: 14, color: BLACK,)
                ]),
              );
            }
        ),
      );
      }
}
