import 'package:chatapps/src/models/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  String collection = "products";
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Product>> getProducts() async =>
      firestore.collection(collection)
          .get()
          .then((result) {
        List<Product> products = [];
        for (DocumentSnapshot product in result.docs) {
          products.add(Product.fromSnapShot(product));
        }
        return products;
      });
}