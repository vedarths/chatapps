import 'dart:ui';

import 'package:chatapps/src/screens/home.dart';
import 'package:chatapps/src/screens/login.dart';
import 'package:flutter/material.dart';
import 'screens/signup.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignupPage(),
        '/login':(BuildContext context) => new LoginPage(),
        '/home':(BuildContext context) => new HomePage(),
      },
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

