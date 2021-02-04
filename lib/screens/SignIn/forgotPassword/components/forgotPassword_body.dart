import 'package:armenu_app/screens/SignIn/components/form_error.dart';
import 'package:armenu_app/screens/SignIn/components/logInButton.dart';
import 'package:armenu_app/screens/SignIn/components/noAccountText.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';


class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Ai uitat parola?",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Adauga adresa de email si iti vom trimite  \nun link pentru recuperarea parolei",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Adauga adresa de email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 40),
            FormError(errors: errors),
            SizedBox(height: 100),
            LogInRequestButton(
              text: "Continua",
              press: () {
                if (_formKey.currentState.validate()) {
                  // Do what you want to do
                }
              },
            ),
            SizedBox(height: 20),
            NoAccountText(),
          ],
        ),
      ),
    );
  }
}
