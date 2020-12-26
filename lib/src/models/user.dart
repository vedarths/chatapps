import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
   static const NAME = "name";
   static const EMAIL = "email";
   static const PHONE = "phone";
   static const ADMIN = "admin";

   String  _name;
   String  _email;
   String  _phone;
   bool _admin;

   // getters
   String get name => _name;
   String get email => _email;
   String get phone => _phone;
   bool get admin => _admin;

   UserModel.fromSnapshot(DocumentSnapshot snapshot) {
      _name = snapshot.data()[NAME];
      _email = snapshot.data()[EMAIL];
      _phone = snapshot.data()[PHONE];
      _admin = snapshot.data()[ADMIN];
   }
}
