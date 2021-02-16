import 'dart:async';
import 'package:armenu_app/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  static String routeName = '/verify';
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User newUser;
  Timer timer;

  @override
  void initState() {
    newUser = _auth.currentUser;
    newUser.sendEmailVerification();
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        title: Text('Email-ul de veridicare a fost trimis catre ${newUser.displayName}'),
        content: Text('Acceseaza link-ul de verificare din email pentru crearea contului'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  Future<void> checkEmailVerified() async {
    newUser = _auth.currentUser;
    await newUser.reload();
    if(newUser.emailVerified) {
      timer.cancel();
      Navigator.popAndPushNamed(context, HomePage.routeName);
    }
  }

}
