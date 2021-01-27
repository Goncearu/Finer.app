import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profilePicture.dart';
import 'settingsMenu.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 100),
          ProfilePicture(),
          SizedBox(height: 40),
          SettingsMenu(
              text: 'Schimbă tema', 
              colour: Colors.grey ,
              press: () {}),
          SettingsMenu(
              text: 'Istoric comenzi', 
              colour: Colors.grey ,
              press: () {}),
          SettingsMenu(
              text: 'Metode de plată',
              colour: Colors.green , 
              press: () {}),
          SettingsMenu(
              text: 'Parăsește masa',
              colour: Colors.red , 
              press: () {})
        ],
      ),
    );
  }
}
