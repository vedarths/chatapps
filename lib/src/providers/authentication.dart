import 'package:chatapps/src/models/user.dart';
import 'package:chatapps/src/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum Status {
  NOT_INITIALIZED,
  AUTHETICATING,
  NOT_AUTHENTICATED,
  AUTHENTICATED,
}

class Authenticator with ChangeNotifier {
  FirebaseAuth _auth;
  User _user;
  Status _status = Status.NOT_INITIALIZED;
  UserService _userService = UserService();
  UserModel _userModel;

  //getters
  Status get status => _status;
  User get user => _user;
  UserModel get userModel => _userModel;

  final formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  Authenticator.initialize() : _auth = FirebaseAuth.instance {
    _auth.authStateChanges().listen(_onStateChanged);
  }

  Future<bool> signIn() async {
    try {
      _status = Status.AUTHETICATING;
      notifyListeners();
      await _auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      return true;
    } catch (exception) {
      _onException(exception.toString());
      return false;
    }
  }

  Future<bool> signUp() async {
    try {
      _status = Status.AUTHETICATING;
      notifyListeners();
      await _auth
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text)
          .then((value) => (user) {
                Map<String, dynamic> values = {
                  "name": name.text,
                  "phone": phone.text,
                  "id": user.user.uid
                };
                _userService.create(values);
              });
      return true;
    } catch (exception) {
      _onException(exception.toString());
      return false;
    }
  }

  Future<void> signOut() async {
    _auth.signOut();
    _status = Status.NOT_AUTHENTICATED;
    notifyListeners();
  }



  Future<void> _onStateChanged(User user) async {
    if (user == null) {
      _status = Status.NOT_INITIALIZED;
    } else {
      _user = user;
      _status = Status.AUTHENTICATED;
      _userModel = await _userService.getById(user.uid);
    }
    notifyListeners();
  }

  //helper methods
  void _onException(String exception) {
    _status = Status.NOT_AUTHENTICATED;
    print("could not sign in / sign up:  " + exception);
  }

  void cleanControllers() {
    email.text = "";
    password.text = "";
    name.text = "";
    phone.text = "";
  }

}
