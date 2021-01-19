import 'package:armenu_app/widgets/product_card/product_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: double.infinity,
          height: 340,
          child: ProductCard(),
        ),
        SizedBox(
          width: double.infinity,
          height: 340,
          child: Card(
            margin: EdgeInsets.all(20),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('images/omletaCuLegume-Web.jpg'),
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bild cu cartofi prajiti',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 20),
                      width: 250,
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'cartofi proaspeti, ou, bacon, sos cheddar, ceapa crocanta',
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
                ),
              ],
            ),),
        ),
        SizedBox(
          width: double.infinity,
          height: 340,
          child: Card(
            margin: EdgeInsets.all(20),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('images/Burger-Web.jpg'),
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Burger de vita si bacon',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 20),
                      width: 250,
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'brie, salata, sos cheddar, cartofi proaspeti praijti',
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
                        '36 LEI',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )],
                ),
              ],
            ),),
        ),
        SizedBox(
          width: double.infinity,
          height: 340,
          child: Card(
            margin: EdgeInsets.all(20),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('images/Sushi-Web.jpg'),
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,bottom: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sushi Tempura',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 20),
                      width: 250,
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'orez, ton, castravete, wassabi, avocado, daikon',
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
                        '32 LEI',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )],
                ),
              ],
            ),),
        ),
      ],
    );
  }
}

