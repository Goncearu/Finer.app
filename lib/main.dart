import 'package:flutter/material.dart';
import 'package:armenu_app/screens/login/login.dart';
import 'package:armenu_app/screens/menu/menu.dart';
import 'package:armenu_app/screens/qrcode/qrcode.dart';
import 'package:armenu_app/screens/settings/settings.dart';
import 'package:armenu_app/screens/virtualtable/virtualTable.dart';
import 'package:armenu_app/screens/waiter/waiter.dart';
import 'package:armenu_app/utils/styles.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
  home: HomePage(),
));

