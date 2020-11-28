import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:chatapps/screens/login.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                  AddressLine1Widget(),
                  AddressLine2Widget(),
                  PostCodeWidget(),
                  TownWidget(),
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


