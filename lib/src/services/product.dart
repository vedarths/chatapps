import 'package:chatapps/src/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  String collection = "products";
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Product>> getProducts() async =>
      firestore.collection(collection)
          .get()
          .then((result) {
        return getProductFromResult(result);
      });

  Future<List<Product>> getProductsByCategory(String category) async =>
      firestore.collection(collection)
          .where("tags", arrayContains: category)
          .get()
          .then((result) {
        return getProductFromResult(result);
      });

  Future<List<Product>> getProductsByName(String name) async {
    // change first character to uppercase
    String searchKey = name[0].toUpperCase() + name.substring(1);
    return firestore.collection(collection)
        .orderBy("name")
        .startAt([searchKey])
        .endAt([searchKey + '\uf8ff'])
        .get()
        .then((result) {
      return getProductFromResult(result);
    });
  }

  List<Product> getProductFromResult(QuerySnapshot result) {
    List<Product> products = [];
    for (DocumentSnapshot product in result.docs) {
      products.add(Product.fromSnapShot(product));
    }
    return products;
  }

}