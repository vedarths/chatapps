import 'dart:ui';
import 'package:chatapps/src/helpers/commons.dart';
import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(195.0, 175.0, 0.0, 0.0),
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
        style: TextStyle(color: BLUE, fontSize: 70.0, fontWeight: FontWeight.bold),
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
        style: TextStyle(color: WHITE, fontSize: 80.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}