
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
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              'Completeaza datele pentru crearea contului \n sau conecteaza-te cu contul de Facebook sau Google ',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
