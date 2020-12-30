import 'package:chatapps/src/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Category {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const PRODUCTS = "PRODUCTS";

  String id;
  String name;
  String image;
  List<Product> products;

  Category({@required this.name, @required this.image, this.products});

  Category.fromSnapShot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      id = snapshot.data()[ID];
      name = snapshot.data()[NAME];
      image = snapshot.data()[IMAGE];
      products = snapshot.data()[PRODUCTS];
    }
  }
}