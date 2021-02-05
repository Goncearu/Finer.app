import 'package:armenu_app/screens/SignIn/forgotPassword/forgot_password_screen.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'form_error.dart';
import 'logInButton.dart';



class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 60),
            buildEmailFormField(),
            SizedBox(height: 30),
            buildPasswordFormField(),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: mainPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text('Remember me'),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(context, ForgotPasswordScreen.routeName),
                  child: Text(
                    'Recuperare parolă',
                    style: TextStyle(
                        decoration: TextDecoration.underline
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            FormError(errors: errors),
            SizedBox(height: 40),
            LogInRequestButton(
              text: 'Continuă',
              press: () {
                if(_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              } ,
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if(value.isNotEmpty && errors.contains(kPassNullError))
        {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if( value.length >= 8 &&
            errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError))
        {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if( value.length < 8 &&
            !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Parolă',
        hintText: 'Parolă',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock_outline),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: mainTextPressedColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: mainPrimaryColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if(value.isNotEmpty && errors.contains(kEmailNullError))
        {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if(!emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kEmailNullError))
        {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if(!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Email',
        focusColor: mainPrimaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.mail_outline),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: mainTextPressedColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: mainPrimaryColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}

