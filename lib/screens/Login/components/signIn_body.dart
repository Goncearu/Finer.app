import 'dart:ui';

import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'Finer App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: mainPrimaryColor,
              ),
                textAlign: TextAlign.center,
              ),
              Text(
                'New era for restaurants. AR Menu, Virtual Table, Instant order ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: mainTextPressedColor,
                ),
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ],
          ),
        ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
        ],
      ),
    );
  }
}
