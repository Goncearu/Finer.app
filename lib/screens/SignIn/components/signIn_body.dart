
import 'dart:ui';
import 'package:armenu_app/screens/SignIn/components/signIn_form.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'noAccountText.dart';



class SignInBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Finer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: mainPrimaryColor,
                ),
                ),
                SignForm(),
                SizedBox(height: 10),
                NoAccountText(),
              ],
            ),
          ),
        ),
    );
  }

}
