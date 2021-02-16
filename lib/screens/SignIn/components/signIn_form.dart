
import 'package:armenu_app/homePage.dart';
import 'package:armenu_app/screens/SignIn/components/socialCard.dart';
import 'package:armenu_app/screens/SignIn/forgotPassword/forgot_password_screen.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'logInButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class SignForm extends StatefulWidget {

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final TextEditingController  _emailController = TextEditingController();
  final TextEditingController  _passwordController = TextEditingController();
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
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
                      onTap: () => Navigator.popAndPushNamed(
                          context, ForgotPasswordScreen.routeName),
                      child: Text(
                        'Recuperare parolă',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(height: 40),
                LogInRequestButton(
                  text: 'Continuă',
                  press: _signIn,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: signInFacebook,
                    ),
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: signInGoogle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
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
      controller: _passwordController,
      obscureText: true,
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

  void _signIn() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text;
    try {
      final user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user != null) {
       Navigator.popAndPushNamed(context, HomePage.routeName);
      }
    } catch (e) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
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
          }
      );
    }
  }

  Future <void> signInGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final User user =
          (await _auth.signInWithCredential(credential)).user;
      if(user != null) {
        _db.collection('users').doc(user.uid).set({
          "name" : user.displayName,
          "lastseen" : DateTime.now(),
          "email" : user.email,
          "profilePicture" : user.photoURL,
        });
        Navigator.popAndPushNamed(context, HomePage.routeName);
      }
      return await FirebaseAuth.instance.signInWithCredential(credential);

    } catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
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
          }
      );
    }

  }

  Future<void> signInFacebook() async {
    try {
      final AccessToken accessToken = await FacebookAuth.instance.login();
      // Create a credential from the access token
      final FacebookAuthCredential credential = FacebookAuthProvider.credential(
        accessToken.token,
      );
      final User user =
          (await _auth.signInWithCredential(credential)).user;
      if (user != null) {
        _db.collection('users').doc(user.uid).set({
          "name": user.displayName,
          "lastseen": DateTime.now(),
          "email": user.email,
          "profilePicture": user.photoURL,
        });
        Navigator.popAndPushNamed(context, HomePage.routeName);
      }
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
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
          }
      );
    }
  }
}