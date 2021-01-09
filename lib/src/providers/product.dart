
import 'package:chatapps/src/models/product.dart';
import 'package:chatapps/src/services/product.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  ProductService productService = ProductService();
  List<Product> products = [];
  List<Product> searched = [];

  ProductProvider.initialize() {
    load();
    search(name: "C");
  }

  Future load() async {
    products = await productService.getProducts();
    notifyListeners();
  }

  Future loadByCategory(String category) async {
    products = await productService.getProductsByCategory(category);
    notifyListeners();
  }

  Future search({String name}) async {
    searched = await productService.getProductsByName(name);
    print('the number of products found : ${searched.length}');
    notifyListeners();
  }
}