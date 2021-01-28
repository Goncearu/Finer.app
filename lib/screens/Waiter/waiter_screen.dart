import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'waiterRequestButton.dart';


class Waiter extends StatelessWidget {

  static String routeName = '/waiter';

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
              WaiterRequestButton(request: 'Doresc o patura'),
              SizedBox(height: 15),
              WaiterRequestButton(request: 'Debarasarea '),
              SizedBox(height: 15),
              WaiterRequestButton(request: 'Doresc gheta'),
            ]),
        ),
    );
  }
}

