import 'package:chatapps/src/providers/authentication.dart';
import 'package:chatapps/src/screens/home.dart';
import 'package:chatapps/src/screens/login.dart';
import 'package:chatapps/src/widgets/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/screens/signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Authenticator.initialize())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Lady",
        routes: <String, WidgetBuilder>{
          '/signup': (BuildContext context) => new SignupPage(),
          '/login': (BuildContext context) => new LoginPage(),
          '/home': (BuildContext context) => new HomePage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ScreenController(),
      )));
}

class ScreenController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Authenticator>(context);
    switch (auth.status) {
      case Status.NOT_INITIALIZED:
        return LoginPage();
      case Status.NOT_AUTHENTICATED:
      case Status.AUTHENTICATING:
        return LoginPage();
      case Status.AUTHENTICATED:
        return HomePage();
      default:
        return LoginPage();
    }
  }
}
