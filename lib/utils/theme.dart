import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    appBarTheme: appBarTheme(),
    fontFamily: 'Galano',
    textTheme: textTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xFFFFFFFF),
    elevation: 0.5,
  );
}

TextTheme textTheme() {
  return TextTheme(
    button: TextStyle(
      color: mainTextPrimaryColor,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    //waiterScreenTitle
    headline1: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: mainTextBlack,
    ),
    //orderTableTitle
    headline2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      wordSpacing: 2,
    ),
    //orderTableTotal
    headline3: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      wordSpacing: 2,
    ),
    //orderTableBody
    bodyText1: TextStyle(
      fontSize: 15,
      color: mainTextBlack,
    ),
    bodyText2: TextStyle(
      fontSize: 13,
      color: mainTextBlack,
    ),
  );
}
