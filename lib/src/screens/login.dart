import 'package:chatapps/src/helpers/commons.dart';
import 'package:chatapps/src/helpers/navigation.dart';
import 'package:chatapps/src/providers/user.dart';
import 'package:chatapps/src/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:chatapps/src/widgets/header.dart';
import 'package:chatapps/src/widgets/buttons.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      key: _key,
      backgroundColor: BLACK,
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
                            cursorColor: WHITE,
                            style: TextStyle(color: WHITE),
                            controller: authProvider.email,
                            decoration: InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(
                                    fontFamily: 'Monteserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue))),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            cursorColor: WHITE,
                            style: TextStyle(color: WHITE),
                            controller: authProvider.password,
                            decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(
                                    fontFamily: 'Monteserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue))),
                            obscureText: true,
                          ),
                          SizedBox(height: 20.0),
                          ForgotPasswordWidget(),
                          SizedBox(height: 40.0),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.blueAccent,
                              color: Colors.blue,
                              elevation: 7.0,
                              child: GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () async {
                                  if (!await authProvider.signIn()) {
                                      _key.currentState.showSnackBar(
                                        SnackBar(content: Text("Login failed!"))
                                      );
                                      return;
                                  }
                                  authProvider.cleanControllers();
                                  changeScreenReplacement(context, HomePage());
                                },
                                child: Center(
                                  heightFactor: 3,
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
                          ),
                          SizedBox(height: 40.0),
                          GoogleLoginWidget()
                        ],
                      )),
                  SizedBox(height: 15.0),
                  RegisterWidget()
                ],
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
    return
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'New to Foody ?',
          style: TextStyle(color: WHITE, fontFamily: 'Monteserrat'),
        ),
        SizedBox(width: 15.0),
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
                        fontFamily: 'Monteserrat'))),
            SizedBox(height: 20.0)
          ],
        ),
      ),
    );
  }
}
