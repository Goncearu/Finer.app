import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'waiterRequestButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class WaiterScreen extends StatefulWidget {
  static String routeName = '/waiter';

  @override
  _WaiterScreenState createState() => _WaiterScreenState();
}

class _WaiterScreenState extends State<WaiterScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User loggedInUser;

  @override
  void initState() {
    requestStream();
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    }
    catch(e){
      print(e);
    }
  }

  void requestStream() async {
    await for ( var snapshot in _firestore.collection('waiterRequest').snapshots()) {
      for( var request in snapshot.docs) {
        print(request.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Ospatar',
            style: TextStyle(
              color: mainPrimaryColor,
              fontSize: 20,
            ),
          )
      ),
      body: SafeArea(
          child: Column(
            children: [
             Container(
               margin: EdgeInsets.symmetric(vertical: 50),
               child: Center(
                 child: Text(
                  'Cu ce te \n putem ajuta?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                      color: mainTextPressedColor,
                    ),
                   ),
               ),
             ),
              StreamBuilder(
                  stream: _firestore.collection('waiterRequest').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(!snapshot.hasData){
                      return Text('Loading');
                    }
                      return Expanded(
                        child: ListView(
                          children: snapshot.data.docs.map((snapshot){
                            return Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: WaiterRequestButton(
                                  request: snapshot.data()['request'],
                                  press: null),
                            );
                        }).toList(),
                        ),
                      );
                    }
              ),
            ]),
        ),
    );
  }
}

