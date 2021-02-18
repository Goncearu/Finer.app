import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';

void goToCart() {}

class SearchBarCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                  color: mainSecondaryColor,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x20000000),
                      spreadRadius: 3,
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Cauta produsul',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      )), //SearchBar
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    //goToCart button
                    decoration: BoxDecoration(
                      gradient: mainPrimaryGradient,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x60B40202),
                          spreadRadius: 3,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart),
                      color: Colors.white,
                      tooltip: 'Go to cart button',
                      onPressed: goToCart,
                    )),
              ))
        ],
      ),
    );
  }
}
