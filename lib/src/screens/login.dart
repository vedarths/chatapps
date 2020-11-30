import 'package:flutter/material.dart';
import 'package:chatapps/src/widgets/elements.dart';
import 'package:chatapps/src/widgets/header.dart';
import 'package:chatapps/src/widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
                  SizedBox(height: 20.0),
                  PasswordWidget(),
                  SizedBox(height: 20.0),
                  ForgotPasswordWidget(),
                  SizedBox(height: 40.0),
                  LoginButtonWidget(),
                  SizedBox(height: 20.0),
                  GoogleLoginWidget()
                ],
              )),
          SizedBox(height: 15.0),
          RegisterWidget()
        ],
      ),
    );
  }
}

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
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
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
            onTap: () {
              Navigator.of(context).pushNamed('/signup');
            },
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
