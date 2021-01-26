import 'package:armenu_app/screens/VirtualTable/virtualTable.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
  home: VirtualTable(),
));

