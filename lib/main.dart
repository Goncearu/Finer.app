
import 'package:flutter/material.dart';

import 'screens/VirtualTable/virtualTable.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto', hintColor: Color(0xFFd0cece)),
  home: VirtualTable(),
));

