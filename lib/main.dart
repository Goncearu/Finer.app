import 'package:flutter/material.dart';
import 'package:armenu_app/screens/menu/menu.dart';
import 'package:armenu_app/utils/theme.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Menu(),
    ));
