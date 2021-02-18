import 'package:armenu_app/screens/SignIn/signUp/components/signUp_form.dart';
import 'package:flutter/material.dart';

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
              'Creaza cont',
              style:
                  Theme.of(context).textTheme.headline1.copyWith(fontSize: 30),
            ),
            Text(
              'Completeaza datele pentru crearea contului \n sau conecteaza-te cu contul de Facebook sau Google ',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
