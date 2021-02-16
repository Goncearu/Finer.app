import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/settings_body.dart';


class SettingsScreen extends StatefulWidget {

  static String routeName = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Profil',
          style: TextStyle(
            color: mainPrimaryColor,
            fontSize: 20,
          ),
        ),
      ),
      body: SettingsBody()
    );
  }
}



