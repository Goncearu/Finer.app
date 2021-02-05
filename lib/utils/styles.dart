import 'package:flutter/material.dart';

const mainPrimaryGradient = LinearGradient(
    colors: [
      const Color(0xFFDB1212),
      const Color(0xFFB40202),
    ],
    begin: const FractionalOffset(0, 0),
    end: const FractionalOffset(1, 0),
    stops: [0.0, 1.0]);

const mainPrimaryColor = Color(0xFFB40202);
const mainSecondaryColor = Color(0xFFFFFFFF);
const mainTextPrimaryColor = Color(0xFFFFFFFF);
const mainTextPressedColor = Color(0xFF262D2F);

const mainBoxShadow = BoxShadow(
  color: Color(0x60B40202),
  spreadRadius: 0.45,
  blurRadius: 18,
);

const secondaryBoxShadow = BoxShadow(
  color: Color(0x20000000),
  spreadRadius: 3,
  blurRadius: 12,
);
