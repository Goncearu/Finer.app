import 'package:armenu_app/widgets/product_card/card_image.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/widgets/product_card/card_description.dart';
import 'package:armenu_app/widgets/product_card/card_title.dart';

class ProductCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          CardImage(),
          CardTitle(),
          CardDescription(),
        ],
      ),);
  }
}

