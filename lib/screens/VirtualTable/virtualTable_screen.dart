import 'package:armenu_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VirtualTable extends StatelessWidget {

  static String routeName = '/virtualTable';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Hanul Drumetului',
        style: TextStyle(
        color: mainPrimaryColor,
        fontSize: 20,
        ),)
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 200,
              decoration: BoxDecoration(
                gradient: mainPrimaryGradient,
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
