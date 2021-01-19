import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,bottom: 10),
      alignment: Alignment.topLeft,
      child: Text(
        'Oua prajite cu avocado',
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

