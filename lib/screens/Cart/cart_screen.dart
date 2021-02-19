import 'package:flutter/material.dart';
import 'components/cart.dart';
import 'package:armenu_app/utils/styles.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Hanul Drumetului',
          style: TextStyle(
            color: mainPrimaryColor,
            fontSize: 20,
          ),
        )),
        body: Cart());
  }
}
