import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/screens/SignIn/signIn_screen.dart';
import 'components/signUp_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: mainPrimaryColor),
            onPressed: () {
              Navigator.popAndPushNamed(context, SignInScreen.routeName);
            }),
        title: Text(
          'Sign Up',
          style: TextStyle(color: mainPrimaryColor, fontSize: 20),
        ),
      ),
      body: SignUpBody(),
    );
  }
}
