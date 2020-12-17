import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
   static const NAME = "name";
   static const EMAIL = "email";
   static const ADDRESS_1 = "addressLine1";
   static const ADDRESS_2 = "addressLine2";
   static const POST_CODE = "postCode";
   static const TOWN = "town";
   static const ADMIN = "admin";

   String  _name;
   String  _email;
   String  _address1;
   String  _address2;
   String  _postCode;
   String  _town;
   bool _admin;

   // getters
   String get name => _name;
   String get email => _email;
   String get address1 => _address1;
   String get address2 => _address2;
   String get postCode => _postCode;
   String get town => _town;
   bool get admin => _admin;

   UserModel.fromSnapshot(DocumentSnapshot snapshot) {
      _name = snapshot.data()[NAME];
      _email = snapshot.data()[EMAIL];
      _address1 = snapshot.data()[ADDRESS_1];
      _address2 = snapshot.data()[ADDRESS_2];
      _postCode = snapshot.data()[POST_CODE];
      _town = snapshot.data()[TOWN];
      _admin = snapshot.data()[ADMIN];
   }


}
