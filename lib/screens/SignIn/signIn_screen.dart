
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

import 'components/signIn_body.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Sign In',
          style: TextStyle(
              color: mainPrimaryColor,
              fontSize: 20
          ),
        ),
      ),
      body: SignInBody(),
    );
  }
}
