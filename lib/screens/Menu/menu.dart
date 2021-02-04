import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

import 'components/menu_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: TextStyle(color: mainPrimaryColor, fontSize: 20),
        ),
      ),
      body: MenuBody(),
    );
  }
}
