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

class AddressLine1Widget extends StatelessWidget {
  const AddressLine1Widget(
      {
        Key key,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'ADDRESS LINE 1',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}

class AddressLine2Widget extends StatelessWidget {
  const AddressLine2Widget(
      {
        Key key,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'ADDRESS LINE 2',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}

class PostCodeWidget extends StatelessWidget {
  const PostCodeWidget(
      {
        Key key,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'POST CODE',
          labelStyle: TextStyle(
              fontFamily: 'Monteserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}

class TownWidget extends StatelessWidget {
  const TownWidget(
      {
        Key key,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'TOWN',
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