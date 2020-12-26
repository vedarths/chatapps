import 'dart:ui';

import 'package:chatapps/src/widgets/elements.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignupPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Stack(children: <Widget>[
                HelloWidget(),
                FoodyWidget(),
                DotWidget()
              ])),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  EmailWidget(),
                  PasswordWidget(),
                  PhoneWidget(),
                  SizedBox(height: 10.0),
                  SignupButtonWidget(),
                  SizedBox(height: 10.0),
                  CancelButtonWidget()
                ],
              )),
          SizedBox(height: 15.0),
        ],
      ),
    );
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
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
      obscureText: true,
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
      child: Text(
        'Hello',
        style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class FoodyWidget extends StatelessWidget {
  const FoodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 185.0, 0.0, 0.0),
      child: Text(
        'Foody',
        style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  const DotWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(167.0, 175.0, 0.0, 0.0),
      child: Text(
        '.',
        style: TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue),
      ),
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
        color: Colors.blue,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
              'CANCEL',
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
                color: Colors.red,
                style: BorderStyle.solid,
                width: 1.0),
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


