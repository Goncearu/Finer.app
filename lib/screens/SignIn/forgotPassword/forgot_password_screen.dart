import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/screens/SignIn/forgotPassword/components/forgotPassword_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recuperare parola',
          style: TextStyle(
              color: mainPrimaryColor,
              fontSize: 18
          ),
        ),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
