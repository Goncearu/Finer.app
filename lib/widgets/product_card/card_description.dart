import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10,right: 20),
          width: 250,
          alignment: Alignment.bottomLeft,
          child: Text(
            '2 oua, cruton de paine, avocado, sos cheddar',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            overflow: TextOverflow.clip,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.bottomRight,
          child: Text(
            '16 LEI',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        )],
    );
  }
}

