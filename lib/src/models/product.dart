import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Product {
  static const ID = "id";
  static const NAME = "name";
  static const DESCRIPTION = "description";
  static const IMAGE = "image";
  static const ACTIVE = "active";
  static const PRICE = "price";
  static const RATING = "rating";
  static const CATEGORY = "category";

  String id;
  String name;
  String description;
  String image;
  double rating;
  bool active;
  double price;
  String category;

  Product({@required this.name, @required this.description, @required this.image, this.rating, this.active, this.price, this.category});

  Product.fromSnapShot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      id = snapshot.data()[ID];
      name = snapshot.data()[NAME];
      description = snapshot.data()[DESCRIPTION];
      image = snapshot.data()[IMAGE];
      rating = snapshot.data()[RATING];
      active = snapshot.data()[ACTIVE];
      price = snapshot.data()[PRICE];
      category = snapshot.data()[CATEGORY];
    }
  }


}
