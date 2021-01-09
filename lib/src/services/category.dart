import 'package:chatapps/src/models/category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryService {
  String collection = "categories";
  FirebaseFirestore firestore= FirebaseFirestore.instance;

  Future<List<Category>> getCategories() async => firestore.collection(collection)
      .get()
      .then((result) {
       List<Category> categories = [];
       for (DocumentSnapshot category in result.docs) {
           categories.add(Category.fromSnapShot(category));
       }
       return categories;
});
}