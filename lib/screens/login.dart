import 'dart:ui';

import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
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
              'LOGIN',
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

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(1.0, 0.0),
        padding: EdgeInsets.only(top: 15.0, left: 20.0),
        child: InkWell(
          child: Text('Forgot Password',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monteserrat',
                  decoration: TextDecoration.underline)),
        )
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