import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Product {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const ACTIVE = "active";
  static const PRICE = "price";
  static const RATING = "rating";
  static const CATEGORY_ID = "categoryId";

  String id;
  String name;
  String image;
  double rating;
  bool active;
  double price;
  String categoryId;

  Product({@required this.name, @required this.image, this.rating, this.active, this.price, this.categoryId});

  Product.fromSnapShot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      id = snapshot.data()[ID];
      name = snapshot.data()[NAME];
      image = snapshot.data()[IMAGE];
      rating = snapshot.data()[RATING];
      active = snapshot.data()[ACTIVE];
      price = snapshot.data()[PRICE];
      categoryId = snapshot.data()[CATEGORY_ID];
    }
  }
}
