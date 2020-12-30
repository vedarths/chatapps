import 'package:chatapps/src/services/category.dart';
import 'package:chatapps/src/models/category.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  CategoryService categoryService = CategoryService();
  List<Category> categories = [];

  CategoryProvider.initialize() {
    load();
  }

  load() async {
    categories = await categoryService.getCategories();
    notifyListeners();
  }
}