import 'package:armenu_app/screens/Login/signIn_screen.dart';
import 'package:armenu_app/screens/Menu/menu.dart';
import 'package:armenu_app/screens/Settings/components/profilePicture.dart';
import 'package:armenu_app/screens/Settings/settings_screen.dart';
import 'package:armenu_app/screens/VirtualTable/virtualTable_screen.dart';
import 'package:armenu_app/screens/Waiter/waiter_screen.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(FinerApp());

class FinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          color: Color(0xFFFFFFFF),
          elevation: 0.5,
        ),
        fontFamily: 'Galano',
        ),
      home: Menu(),
    );
  }
}


