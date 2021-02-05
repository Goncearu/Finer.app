import 'package:armenu_app/routes.dart';
import 'package:armenu_app/screens/SignIn/signIn_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(FinerApp());

class FinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          color: Color(0xFFFFFFFF),
          elevation: 0.5,
        ),
        fontFamily: 'Galano',
      ),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}
