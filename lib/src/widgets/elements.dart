import 'dart:ui';

import 'package:flutter/material.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'EMAIL',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}

class PhoneWidget extends StatelessWidget {
  const PhoneWidget(
      {
        Key key,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'PHONE',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}

class SignupWidget extends StatelessWidget {
  const SignupWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
      child: Text(
        'Signup',
        style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}