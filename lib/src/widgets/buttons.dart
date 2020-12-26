import 'dart:ui';

import 'package:flutter/material.dart';

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
          onTap: () {
            Navigator.pop(context);
          },
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