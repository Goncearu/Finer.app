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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
            SizedBox(height: 24),
            buildPasswordFormField(),
            SizedBox(height: 24),
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
                Text('Remember me',
                    style: Theme.of(context).textTheme.bodyText1),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.popAndPushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text('Recuperare parolă',
                      style: Theme.of(context).textTheme.bodyText1),
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
                    color: Color(0xFF4267B2),
                    iconColor: Colors.white),
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: signInGoogle,
                  color: Color(0xFFe0e0e0),
                  iconColor: null,
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
        hintText: 'Email',
        focusColor: mainPrimaryColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.mail_outline,
          color: mainTextPressedColor,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 10,
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: mainPrimaryColor)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: mainTextPressedColor),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: mainPrimaryColor)),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Parolă',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.lock_outline, color: mainTextPressedColor),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 10,
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: mainPrimaryColor)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: mainTextPressedColor),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: mainPrimaryColor)),
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

  Future<void> signInGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final User user = (await _auth.signInWithCredential(credential)).user;
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
      print(e);
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

  Future<void> signInFacebook() async {
    try {
      final AccessToken accessToken = await FacebookAuth.instance.login();
      // Create a credential from the access token
      final FacebookAuthCredential credential = FacebookAuthProvider.credential(
        accessToken.token,
      );
      final User user = (await _auth.signInWithCredential(credential)).user;
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
