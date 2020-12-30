import 'package:cloud_firestore/cloud_firestore.dart';

class OrderItem {
  static const ID = "id";
  static const PRODUCT_ID = "productId";
  static const NAME = "name";
  static const ORDER_ID = "orderId";
  static const UNIT_PRICE = "unitPrice";
  static const QUANTITY = "quantity";
  static const CREATED = "created";
  static const CREATED_BY = "createdBy";
  static const UPDATED = "updated";
  static const UPDATED_BY = "updatedBy";

  String id;
  String productId;
  String name;
  String orderId;
  double unitPrice;
  int  quantity;
  DateTime created;
  String createdBy;
  String updated;
  String updatedBy;

  OrderItem.fromSnapshot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
      id = snapshot.data()[ID];
      productId = snapshot.data()[PRODUCT_ID];
      name = snapshot.data()[NAME];
      orderId = snapshot.data()[ORDER_ID];
      unitPrice = snapshot.data()[UNIT_PRICE];
      quantity = snapshot.data()[QUANTITY];
      created = snapshot.data()[CREATED];
      createdBy = snapshot.data()[CREATED_BY];
      updated = snapshot.data()[UPDATED];
      updatedBy = snapshot.data()[UPDATED];
    }
  }

}