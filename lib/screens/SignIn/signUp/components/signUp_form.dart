
import 'package:armenu_app/screens/SignIn/components/logInButton.dart';
import 'package:armenu_app/screens/SignIn/components/socialCard.dart';
import 'package:armenu_app/screens/SignIn/signUp/components/verify_screen.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../../../../homePage.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final TextEditingController  _emailController = TextEditingController();
  final TextEditingController  _passwordController = TextEditingController();
  final TextEditingController  _nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
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
                  press: signInGoogle,
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
            SizedBox(height: 50),
            LogInRequestButton(
                text: 'Register',
                press: signUp,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }


  TextFormField buildNameFormField() {
    return TextFormField(
          controller: _nameController,
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

  void signUp() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text;
    String name = _nameController.text;
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        newUser.user.updateProfile(displayName: name);
        _db.collection('users').doc(newUser.user.uid).set({
          "email": email,
          "name": name,
          "lastseen": DateTime.now()
        });
        Navigator.popAndPushNamed(context, VerifyScreen.routeName);
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

