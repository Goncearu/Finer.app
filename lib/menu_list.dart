import 'dart:ui';
import 'package:armenu_app/widgets/product_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Expanded(
              child: Text(
                'MENIU ONLINE',
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Text(
                'AR MENU',
                style: GoogleFonts.lato(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: Colors.redAccent[700],
                ),
              ),
            ),
          ]),
        ),
      ),
      body: SafeArea(
        child: ProductsList(),
      ),
    );
  }
}
