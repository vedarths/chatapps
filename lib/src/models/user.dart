import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
   static const NAME = "name";
   static const EMAIL = "email";
   static const PHONE = "phone";
   static const ADMIN = "admin";

   String name;
   String email;
   String phone;
   bool admin;

   UserModel.fromSnapshot(DocumentSnapshot snapshot) {
      if (snapshot.exists && snapshot.data() != null) {
         name = snapshot.data()[NAME];
         email = snapshot.data()[EMAIL];
         phone = snapshot.data()[PHONE];
         admin = snapshot.data()[ADMIN];
      }
   }
}
