import 'package:armenu_app/screens/Menu/components/foodData.dart';
import 'package:armenu_app/screens/menu/components/searchBarCart.dart';
import 'package:armenu_app/screens/menu/components/foodCard.dart';
import 'package:armenu_app/screens/menu/components/cart.dart';
import 'package:flutter/material.dart';
import 'package:armenu_app/utils/styles.dart';
import 'package:armenu_app/utils/theme.dart';
import 'dart:ui';

class MenuBody extends StatefulWidget {
  @override
  MenuBodyState createState() => MenuBodyState();
}

class MenuBodyState extends State<MenuBody> {
  List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = [false, true];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(boxShadow: [mainBoxShadow]),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        padding: EdgeInsets.all(0.0),
                        elevation: 0,
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: mainPrimaryGradient,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 150.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Mancare",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Center(
                    child: Container(
                      height: 50.0,
                      decoration:
                          BoxDecoration(boxShadow: [secondaryBoxShadow]),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        padding: EdgeInsets.all(0.0),
                        elevation: 0,
                        child: Ink(
                          decoration: BoxDecoration(
                              color: mainSecondaryColor,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 150.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Bautura",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: mainPrimaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SearchBarCart(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top:
                      14), //// ListView.builder works only on Expanded // needs changes
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: properties.length,
                  itemBuilder: (context, index) => FoodCard(
                        title: properties[index].title,
                        desc: properties[index].desc,
                        image: properties[index].image,
                        likes: properties[index].likes,
                        price: properties[index].price,
                        weight: properties[index].weight,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
