import 'package:flutter/material.dart';
import 'screens/menu/menu.dart';

void main() => runApp(FinerApp());

class FinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Galano',
        hintColor: Color(0xFFd0cece),
      ),
      home: Menu(),
    );
  }
}
