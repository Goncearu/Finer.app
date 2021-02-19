import 'package:armenu_app/screens/SignIn/signUp/components/signUp_form.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Creează cont',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Completează datele pentru crearea contului \n sau conectează-te cu conturile sociale ',
              style: TextStyle(
                  color: mainTextSemiBlack, fontSize: 14, height: 1.3),
              textAlign: TextAlign.center,
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
