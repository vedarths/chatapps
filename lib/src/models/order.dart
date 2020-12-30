import 'package:cloud_firestore/cloud_firestore.dart';

import 'orderItem.dart';

enum OrderStatus {
  CREATED,
  PENDING,
  CANCELLED,
  DELIVERED,
}

class Order {
  static const ID = "id";
  static const ORDER_REFERENCE = "orderReference";
  static const AMOUNT = "amount";
  static const ITEMS = "items";
  static const USER_ID = "userId";
  static const STATUS = "status";
  static const CREATED = "created";
  static const CREATED_BY = "createdBy";
  static const UPDATED = "updated";
  static const UPDATED_BY = "updatedBy";

  String id;
  String orderReference;
  List<OrderItem> items = new List();
  double amount;
  String userId;
  OrderStatus status;
  DateTime  created;
  String createdBy;
  String updated;
  String updatedBy;


  Order(this.orderReference, this.items, this.userId, this.status, this.created,
      this.createdBy, this.updated, this.updatedBy);

  void addItem(OrderItem item) {
    items.add(item);
  }

  Order.fromSnapshot(DocumentSnapshot snapshot) {
    if (snapshot.exists && snapshot.data() != null) {
        id = snapshot.data()[ID];
        orderReference = snapshot.data()[ORDER_REFERENCE];
        amount = snapshot.data()[AMOUNT];
        items = snapshot.data()[ITEMS];
        userId = snapshot.data()[USER_ID];
        status = snapshot.data()[STATUS];
        created = snapshot.data()[CREATED];
        createdBy = snapshot.data()[CREATED_BY];
        updated = snapshot.data()[UPDATED];
        updatedBy = snapshot.data()[UPDATED];
    }
  }
 }