<<<<<<< HEAD
=======

>>>>>>> 0ca897b15f90682771f7b0f5d7b25bcdcd463915
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:armenu_app/screens/menu/menu.dart';
import 'package:armenu_app/utils/theme.dart';

import 'screens/VirtualTable/virtualTable.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Menu(),
    ));
=======
import 'screens/VirtualTable/virtualTable.dart';

void main() => runApp(FinerApp());

class FinerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Galano',
        hintColor: Color(0xFFd0cece),
        ),
      home: VirtualTable(),
    );
  }
}



>>>>>>> e83d97dcb06206a13c156f3b151e320741e3d9e6
