import 'package:armenu_app/screens/menu/components/foodData.dart';
import 'package:armenu_app/screens/menu/components/searchBarCart.dart';
import 'package:armenu_app/screens/menu/components/foodCard.dart';
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

  final List<String> foodItems = ["boston", "text", "test"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 8),
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
          ListView.builder(
              itemCount: properties.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => FoodCard(
                    title: properties[index].title,
                    desc: 'ssss',
                  ))
        ],
      ),
    );
  }
}
