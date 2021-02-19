import 'package:armenu_app/screens/SignIn/components/logInButton.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Ai uitat parola?",
                  style: Theme.of(context).textTheme.headline1),
              Text(
                "Adauga adresa de email si iti vom trimite  \nun link pentru recuperarea parolei",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: mainTextSemiBlack, fontSize: 14, height: 1.3),
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
  final TextEditingController _emailController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: mainPrimaryColor),
                hintText: "Adauga adresa de email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainPrimaryColor)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainTextPressedColor),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainPrimaryColor)),
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: mainTextPressedColor,
                ),
              ),
            ),
            SizedBox(height: 140),
            LogInRequestButton(
              text: "Reseteaza parola",
              press: resetPassword,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> resetPassword() async {
    final email = _emailController.text;
    try {
      await _auth.sendPasswordResetEmail(email: email);
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text('Congrats'),
              content: Text('Sign In Succes'),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text('Cancel'),
                ),
              ],
            );
          });
    } catch (e) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text('Error'),
              content: Text(e.toString()),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text('Cancel'),
                ),
              ],
            );
          });
    }
  }
}
