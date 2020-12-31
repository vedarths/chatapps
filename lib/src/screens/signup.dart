import 'dart:ui';

import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/helpers/navigation.dart';
import 'package:chatapps/src/providers/user.dart';
import 'package:chatapps/src/widgets/header.dart';
import 'package:chatapps/src/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';


class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        backgroundColor: BLACK,
        key: _key,
        resizeToAvoidBottomPadding: false,
        body: authProvider.status == Status.AUTHENTICATING
            ? Loading()
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Stack(children: <Widget>[
                      HelloWidget(),
                      FoodyWidget(),
                      DotWidget()
                    ])),
                    Container(
                        padding:
                            EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(color: WHITE),
                              cursorColor: WHITE,
                              controller: authProvider.name,
                              decoration: InputDecoration(
                                  labelText: 'NAME',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Monteserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              style: TextStyle(color: WHITE),
                              cursorColor: WHITE,
                              controller: authProvider.email,
                              decoration: InputDecoration(
                                  labelText: 'EMAIL',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Monteserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.blue))),
                            ),
                            TextFormField(
                              style: TextStyle(color: WHITE),
                              cursorColor: WHITE,
                              controller: authProvider.password,
                              decoration: InputDecoration(
                                  labelText: 'PASSWORD',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Monteserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                              obscureText: true,
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              style: TextStyle(color: WHITE),
                              cursorColor: WHITE,
                              controller: authProvider.phone,
                              decoration: InputDecoration(
                                  labelText: 'PHONE',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Monteserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue))),
                              keyboardType: TextInputType.phone,
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.blueAccent,
                                color: Colors.blue,
                                elevation: 7.0,
                                child: GestureDetector(
                                  onTap: () async {
                                    if (!await authProvider.signUp()) {
                                      _key.currentState.showSnackBar(
                                          SnackBar(content: Text("Signup failed!"))
                                      );
                                      return;
                                    }
                                    authProvider.cleanControllers();
                                    changeScreenReplacement(context, HomePage());
                                  },
                                  child: Center(
                                    child: Text(
                                      'SIGNUP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Monteserrat'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            CancelButtonWidget()
                          ],
                        )),
                    SizedBox(height: 15.0),
                  ],
                ),
              ));
  }
}

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'PASSWORD',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      obscureText: true,
    );
  }
}

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'New to Foody ?',
          style: TextStyle(fontFamily: 'Monteserrat'),
        ),
        SizedBox(width: 5.0),
        InkWell(
            onTap: () {},
            child: Text('Register',
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Monteserrat',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)))
      ],
    );
  }
}

class SignupButtonWidget extends StatelessWidget {
  const SignupButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.blueAccent,
        color: Colors.blue,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              'SIGNUP',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monteserrat'),
            ),
          ),
        ),
      ),
    );
  }
}

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.blueAccent,
        color: Colors.white,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
              'CANCEL',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monteserrat'),
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleLoginWidget extends StatelessWidget {
  const GoogleLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.red, style: BorderStyle.solid, width: 1.0),
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            Center(
                child: Text('Login with Google',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Monteserrat')))
          ],
        ),
      ),
    );
  }
}
