import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profilePicture.dart';
import 'settingsMenu.dart';
import 'profileInformation.dart';

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          ProfilePicture(),
          SizedBox(height: 20),
          SettingsMenu(text: 'Schimbă tema', colour: Colors.grey, press: () {}),
          SettingsMenu(
              text: 'Istoric comenzi', colour: Colors.grey, press: () {}),
          SettingsMenu(
              text: 'Metode de plată', colour: Colors.green, press: () {}),
          SettingsMenu(text: 'Parăsește masa', colour: Colors.red, press: () {})
        ],
      ),
    );
  }
}
