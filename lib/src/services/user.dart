import 'package:chatapps/src/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  String collection = "users";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void create(Map<String, dynamic> values) {
    String id = values["id"];
      _firestore.collection(collection)
          .doc(id)
          .set(values);
  }

  void update(Map<String, dynamic> values) {
    String id = values["id"];
    _firestore.collection(collection)
        .doc(id)
        .update(values);
  }

  Future<UserModel> getById(String id)  => _firestore.collection(collection).doc(id).get().then((doc) {
    return UserModel.fromSnapshot(doc);
  });

}