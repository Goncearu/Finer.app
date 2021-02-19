import 'package:armenu_app/screens/Settings/settings_menu/settingsMenu.dart';
import 'package:armenu_app/screens/SignIn/signIn_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profilePicture.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsBody extends StatefulWidget {
  @override
  _SettingsBodyState createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  final _auth = FirebaseAuth.instance;

  User loggedInUser;
  String loggedInUserEmail;
  String loggedInUserName;

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        loggedInUserEmail = loggedInUser.email;
        loggedInUserName = user.displayName;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          ProfilePicture(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(loggedInUserName,
                    style: Theme.of(context).textTheme.headline1),
                Text(loggedInUserEmail,
                    style: Theme.of(context).textTheme.headline3),
              ],
            ),
          ),
          SizedBox(height: 20),
          SettingsMenu(text: 'Schimbă tema', colour: Colors.grey, press: () {}),
          SettingsMenu(
              text: 'Istoric comenzi', colour: Colors.grey, press: () {}),
          SettingsMenu(
              text: 'Metode de plată', colour: Colors.green[700], press: () {}),
          SettingsMenu(
              text: 'Parăsește masa',
              colour: Colors.red,
              press: () {
                _auth.signOut();
                Navigator.popAndPushNamed(context, SignInScreen.routeName);
              })
        ],
      ),
    );
  }
}
