
import 'package:armenu_app/screens/SignIn/components/form_error.dart';
import 'package:armenu_app/screens/SignIn/components/logInButton.dart';
import 'package:armenu_app/screens/SignIn/components/socialCard.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/constants.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String name;
  String email;
  String password;
  String confirmPassword;
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            buildNameFormField(),
            SizedBox(height: 20),
            buildEmailFormField(),
            SizedBox(height: 20),
            buildPasswordFormField(),
            SizedBox(height: 20),
            buildConfPasswordFormField(),
            FormError(errors: errors),
            SizedBox(height: 50),
            LogInRequestButton(text: 'Continua', press: () {
              if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // Navigator.popAndPushNamed(context, CompleteAccountScreen.routeName);
              }
            }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
          keyboardType: TextInputType.name,
          onSaved: (newValue) => name = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kNamelNullError)) {
              setState(() {
                errors.remove(kNamelNullError);
              });
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty && !errors.contains(kNamelNullError)) {
              setState(() {
                errors.add(kNamelNullError);
              });
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Nume',
            hintText: 'Nume',
            focusColor: mainPrimaryColor,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(Icons.account_circle_outlined),
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

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
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

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value == password && errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        return null;
      },
      validator: (value) {

        if (value != password && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirmare parolă',
        hintText: 'Confirmare parolă',
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

}
