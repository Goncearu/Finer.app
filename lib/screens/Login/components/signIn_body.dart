import 'dart:ui';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'logInButton.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
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
            ],
          ),
        ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> errors=[];
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
            SizedBox(height: 30),
            LogInRequestButton(
              text: 'LogIn',
              press: () {},
            ),

          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              floatingLabelBehavior: FloatingLabelBehavior.always,
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
            validator: (value){
             if(value.isEmpty)
               {
                 setState(() {
                   errors.add('Adauga adresa de email');
                 });
               }
             return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
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
