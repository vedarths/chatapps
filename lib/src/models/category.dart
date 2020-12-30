import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Category {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";

  String id;
  String name;
  String image;

  Category({@required this.name, @required this.image});

  Category.fromSnapShot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      id = snapshot.data()[ID];
      name = snapshot.data()[NAME];
      image = snapshot.data()[image];
    }
  }
}