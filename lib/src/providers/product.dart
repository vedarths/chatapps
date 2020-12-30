
import 'package:chatapps/src/models/product.dart';
import 'package:chatapps/src/services/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  ProductService productService = ProductService();
  List<Product> products = [];

  ProductProvider.initialize() {
    load();
  }

  load() async {
    products = await productService.getProducts();
    notifyListeners();
  }
}